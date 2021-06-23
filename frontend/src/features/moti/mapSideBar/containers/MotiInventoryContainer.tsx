import { AxiosResponse } from 'axios';
import FilterBackdrop from 'components/maps/leaflet/FilterBackdrop';
import {
  ELECTORAL_LAYER_URL,
  PARCELS_LAYER_URL,
  useLayerQuery,
} from 'components/maps/leaflet/LayerPopup';
import { ADMINISTRATIVE_AREA_CODE_SET_NAME } from 'constants/API';
import {
  SidebarContextType,
  useQueryParamSideBar,
} from 'features/mapSideBar/hooks/useQueryParamSideBar';
import { pidFormatter } from 'features/properties/components/forms/subforms/PidPinForm';
import { FormikProps, FormikValues, getIn } from 'formik';
import { FeatureCollection, GeoJsonProperties, Geometry } from 'geojson';
import { useApiLtsa } from 'hooks/pims-api/useApiLtsa';
import { IGeocoderResponse } from 'hooks/useApi';
import useLookupCodeHelpers from 'hooks/useLookupCodeHelpers';
import { ParcelInfoOrder, TitleSummary } from 'interfaces/ltsaModels';
import { geoJSON, LatLngLiteral } from 'leaflet';
import * as React from 'react';
import { useCallback, useEffect, useMemo, useState } from 'react';
import { useDispatch } from 'react-redux';
import { toast } from 'react-toastify';
import { getAdminAreaFromLayerData } from 'utils';

import {
  defaultPropertyValues,
  FormHeader,
  InventoryFormButtons,
  IProperty,
  MapSideBarLayout,
  PropertyForm,
  PropertySearchForm,
  useDuplicatePidModal,
  useMarkerSearch,
} from '..';
import InventoryTabs from '../InventoryTabs';
import SubmitPropertySelector from '../SubmitPropertySelector';

/**
 * container responsible for logic related to map sidebar display. Synchronizes the state of the parcel detail forms with the corresponding query parameters (push/pull).
 */
export const MotiInventoryContainer: React.FunctionComponent = () => {
  const formikRef = React.useRef<FormikProps<FormikValues>>();
  const { showSideBar, setShowSideBar, size, context: sidebarContext } = useQueryParamSideBar(
    formikRef,
  );
  const [loading, setLoading] = useState<boolean>(false);
  const [currentProperty, setCurrentProperty] = useState<IProperty | undefined>();
  const dispatch = useDispatch();
  const { getByType } = useLookupCodeHelpers();
  const adminAreas = useMemo(() => getByType(ADMINISTRATIVE_AREA_CODE_SET_NAME), [getByType]);
  const parcelLayerService = useLayerQuery(PARCELS_LAYER_URL);
  const electoralLayerService = useLayerQuery(ELECTORAL_LAYER_URL);
  const { getParcelInfo, getTitleSummaries } = useApiLtsa();
  const { ErrorModal } = useDuplicatePidModal();

  /**
   * synchronize the state of the property tracked by this container (which should be the currently displayed form) and the map.
   */
  useEffect(() => {
    if (!!currentProperty) {
      formikRef?.current?.setValues(currentProperty);
    } else {
      formikRef?.current?.resetForm();
    }
  }, [currentProperty, dispatch]);

  /**
   * Query the parcel layer, using either a pid or a lat/lng.
   * @param latLng optional, query parcel service by lat/lng.
   * @param pid optional, query parcel service by pid.
   */
  const getParcelLayerResponse = useCallback(
    async (latLng?: LatLngLiteral, pid?: string) => {
      if (!!pid) {
        return await parcelLayerService.findByPid(pid);
      } else if (!!latLng) {
        return await parcelLayerService.findOneWhereContains(latLng);
      }
      throw Error('pid or lat/lng must be specified');
    },
    [parcelLayerService],
  );

  /**
   * Populate the formik form using the passed property data. In the future these requests may be centralized in the API.
   * @param nameSpace the formik namespace that should be used to write any retrieved data.
   * @param latLng the latLng that corresponds to all of the response data.
   * @param parcelLayerResponse the response from the parcel layer.
   * @param electoralLayerResponse the response from the parcel layer, populates the electoral district.
   * @param ltsaParcelResponse the ltsa parcel info response, used to populate the legal description.
   * @param ltsaTitleSummariesResponse the ltsa title summary, used to populate the title number.
   * @param geocoderResponse the (optional) geocoder response, used to populate the address.
   */
  const formikParcelDataPopulateCallback = useCallback(
    (
      latLng: LatLngLiteral,
      parcelLayerResponse: FeatureCollection<Geometry, GeoJsonProperties>,
      electoralLayerResponse: FeatureCollection<Geometry, GeoJsonProperties>,
      ltsaParcelResponse: ParcelInfoOrder | undefined,
      ltsaTitleSummariesResponse: TitleSummary[] | undefined,
      geocoderResponse?: IGeocoderResponse,
    ) => {
      const newValues = {
        municipality: getIn(parcelLayerResponse, 'features.0.properties.MUNICIPALITY') ?? '',
        electoralDistrict: getIn(electoralLayerResponse, 'features.0.properties.ED_NAME') ?? '',
        regionalDistrict:
          getIn(parcelLayerResponse, 'features.0.properties.REGIONAL_DISTRICT') ?? '',
        ruralArea: getIn(parcelLayerResponse, 'features.0.properties.ADMIN_AREA_NAME') ?? '',
        pid: pidFormatter(getIn(parcelLayerResponse, 'features.0.properties.PID') ?? ''),
        titleNumber: getIn(ltsaTitleSummariesResponse, '0.titleNumber') ?? '',
        legalDescription:
          ltsaParcelResponse?.orderedProduct?.fieldedData?.legalDescription?.fullLegalDescription,
        address: {
          line1: geocoderResponse?.address1 ?? '',
          administrativeArea:
            geocoderResponse?.administrativeArea ??
            getAdminAreaFromLayerData(
              adminAreas,
              getIn(parcelLayerResponse, 'features.0.properties.MUNICIPALITY'),
            )?.name ??
            '',
          provinceId: geocoderResponse?.provinceCode ?? 'BC',
          postal: '',
        },
        latitude: latLng.lat,
        longitude: latLng.lng,
      };
      setCurrentProperty({ ...defaultPropertyValues, ...newValues });
    },
    [adminAreas],
  );

  /**
   * Populate the parcel form with data from BC Data Warehouse layers and ltsa. One of either PID or latLng is required.
   * @param latLng optional, query services via lat/lng
   * @param pid optional, query services by pid
   * @param geocoderResponse optional, if provided, all address details will be populated.
   */
  const populateForm = useCallback(
    async (latLng?: LatLngLiteral, pid?: string, geocoderResponse?: IGeocoderResponse) => {
      setCurrentProperty(undefined);

      try {
        setLoading(true);
        const parcelLayerResponse = await getParcelLayerResponse(latLng, pid);
        const properties = getIn(parcelLayerResponse, 'features.0.properties');
        if (!properties?.PID) {
          toast.warning(
            'Unable to find parcel identifier (PID) for the searched location. A property must have a PID to be added to PSP, ensure this property has a PID.',
          );
          return;
        }
        const calculatedLatLng =
          latLng ??
          geoJSON(parcelLayerResponse?.features[0]?.geometry)
            .getBounds()
            .getCenter();
        const electoralLayerResponse = await electoralLayerService.findOneWhereContains(
          calculatedLatLng,
        );
        const ltsaResponse = await handleLtsaRequest(
          getParcelInfo(properties?.PID),
          properties?.PID,
        );
        const ltsaTitleResponse = await handleLtsaRequest(
          getTitleSummaries(properties?.PID),
          properties?.PID,
        );

        formikParcelDataPopulateCallback(
          calculatedLatLng,
          parcelLayerResponse,
          electoralLayerResponse,
          ltsaResponse?.data,
          ltsaTitleResponse?.data,
          geocoderResponse,
        );
      } catch (error) {
        toast.error(
          'Property search failed. Please check your search criteria and try again. If this error persists, contact the Help Desk.',
        );
        console.debug(JSON.stringify(error));
      } finally {
        setLoading(false);
      }
    },
    [
      electoralLayerService,
      formikParcelDataPopulateCallback,
      getParcelInfo,
      getParcelLayerResponse,
      getTitleSummaries,
    ],
  );

  const handlePidChange = useCallback(
    async (pid: string) => {
      if (pid) {
        populateForm(undefined, pid);
      }
    },
    [populateForm],
  );

  /**
   * Place an order with the LTSA parcel info service, return the json response.
   * @param ltsaRequest An ltsa request that is in progress.
   * @param pid The pid used to populate the parcel info order.
   */
  const handleLtsaRequest = async <T extends {}>(
    ltsaRequest: Promise<AxiosResponse<T>>,
    pid: string,
  ) => {
    try {
      return await ltsaRequest;
    } catch (error) {
      if (error?.response?.status === 404) {
        toast.warning(
          error?.response?.data?.details ??
            `PID: ${pidFormatter(pid)} not found in Title Direct Search Service.`,
          { autoClose: false },
        );
        throw error;
      } else {
        toast.error(
          error?.response?.data?.details ?? 'Request failed from Title Direct Search Service.',
          { autoClose: false },
        );
        throw error;
      }
    }
  };
  const { setMovingPinNameSpace } = useMarkerSearch(formikRef, showSideBar, populateForm);

  return (
    <MapSideBarLayout
      title="Add Titled Property to Inventory"
      show={showSideBar}
      setShowSideBar={setShowSideBar}
      size={size}
    >
      {!sidebarContext || sidebarContext === SidebarContextType.ADD_PROPERTY_TYPE_SELECTOR ? (
        <SubmitPropertySelector
          addProperty={() => setShowSideBar(true, SidebarContextType.ADD_BARE_LAND, 'wide', true)}
        />
      ) : (
        <>
          <FilterBackdrop show={loading} />
          <PropertySearchForm
            handlePidChange={handlePidChange}
            handleGeocoderChange={async (data: IGeocoderResponse) => {
              populateForm({ lat: data.latitude, lng: data.longitude }, undefined, data);
            }}
            setMovingPinNameSpace={setMovingPinNameSpace}
          />
          <InventoryTabs
            disabled={!currentProperty}
            PropertyForm={
              currentProperty ? (
                <PropertyForm formikRef={formikRef}></PropertyForm>
              ) : (
                <FormHeader>Property Information</FormHeader>
              )
            }
          />
          <InventoryFormButtons
            disabled={!currentProperty}
            onCancel={() => setCurrentProperty(undefined)}
            onSubmit={() => formikRef?.current?.submitForm()}
          />
          {ErrorModal}
        </>
      )}
    </MapSideBarLayout>
  );
};

export default MotiInventoryContainer;
