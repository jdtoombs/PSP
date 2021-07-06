import { AxiosError } from 'axios';
import { SelectOption } from 'components/common/form';
import { TableSort } from 'components/Table/TableSort';
import { EvaluationKeys, FiscalKeys } from 'constants/index';
import { FormikProps, getIn } from 'formik';
import { IEvaluation, IFiscal } from 'interfaces';
import _ from 'lodash';
import { isEmpty, isNull, isUndefined, keys, lowerFirst, startCase } from 'lodash';
import moment from 'moment-timezone';
import { hideLoading, showLoading } from 'react-redux-loading-bar';
import { ILookupCode } from 'store/slices/lookupCodes';
import { logError, logRequest, logSuccess } from 'store/slices/network/networkSlice';

/**
 * Convert the specified 'input' value into a decimal or undefined.
 * @param input The string value to convert to a decimal.
 */
export const decimalOrUndefined = (input: string): number | undefined => {
  return input !== '' && input !== undefined ? parseInt(input, 10) : undefined;
};

/**
 * Convert the specified 'input' value into a float or undefined.
 * @param input The string value to convert to a float.
 */
export const floatOrUndefined = (input: string): number | undefined => {
  return input !== '' && input !== undefined ? parseFloat(input) : undefined;
};

/**
 * Determine if the specified 'input' value is a positive number of zero.
 * @param input The value to evaluate.
 * @returns True if the value is a positive number or zero, false otherwise.
 */
export const isPositiveNumberOrZero = (input: string | number | undefined | null) => {
  if (isNull(input) || isUndefined(input)) {
    return false;
  }

  if (typeof input === 'string' && isEmpty(input.trim())) {
    return false;
  }

  return !isNaN(Number(input)) && Number(input) > -1;
};

/** used for filters that need to display the string value of a parent agency agency */
export const mapLookupCodeWithParentString = (
  code: ILookupCode,
  /** the list of lookup codes to look for parent */
  options: ILookupCode[],
): SelectOption => ({
  label: code.name,
  value: code.id.toString(),
  code: code.code,
  parentId: code.parentId,
  parent: options.find((a: ILookupCode) => a.id.toString() === code.parentId?.toString())?.name,
});

/** used for inputs that need to display the string value of a parent agency agency */
export const mapSelectOptionWithParent = (
  code: SelectOption,
  /** the list of lookup codes to look for parent */
  options: SelectOption[],
): SelectOption => ({
  label: code.label,
  value: code.value.toString(),
  code: code.code,
  parentId: code.parentId,
  parent: options.find((a: SelectOption) => a.value.toString() === code.parentId?.toString())
    ?.label,
});

type FormikMemoProps = {
  formikProps: FormikProps<any>;
  field: string;
  disabled?: boolean;
  options?: SelectOption[];
} & any;
/**
 * Common use memo function prevents renders unless associated field data has been changed.
 * Essential for performance on large forms. Adapted from:
 * https://jaredpalmer.com/formik/docs/api/fastfield
 * @param param0 params from previous render
 * @param param1 params from current render
 */
export const formikFieldMemo = (
  {
    formikProps: currentProps,
    field: currField,
    disabled: currentDisabled,
    options: currentOptions,
  }: FormikMemoProps,
  {
    formikProps: prevProps,
    field: prevField,
    disabled: prevDisabled,
    options: prevOptions,
  }: FormikMemoProps,
) => {
  return !(
    currField !== prevField ||
    currentDisabled !== prevDisabled ||
    currentOptions !== prevOptions ||
    getIn(currentProps.values, prevField) !== getIn(prevProps.values, prevField) ||
    getIn(currentProps.errors, prevField) !== getIn(prevProps.errors, prevField) ||
    getIn(currentProps.touched, prevField) !== getIn(prevProps.touched, prevField) ||
    Object.keys(currentProps).length !== Object.keys(prevProps).length ||
    currentProps.isSubmitting !== prevProps.isSubmitting
  );
};

/** Provides default redux boilerplate applicable to most axios redux actions
 * @param dispatch Dispatch function
 * @param actionType All dispatched GenericNetworkActions will use this action type.
 * @param axiosPromise The result of an axios.get, .put, ..., call.
 */
export const handleAxiosResponse = (
  dispatch: Function,
  actionType: string,
  axiosPromise: Promise<any>,
): Promise<any> => {
  dispatch(logRequest(actionType));
  dispatch(showLoading());
  return axiosPromise
    .then((response: any) => {
      dispatch(logSuccess({ name: actionType }));
      dispatch(hideLoading());
      return response.data ?? response.payload;
    })
    .catch((axiosError: AxiosError) => {
      dispatch(
        logError({ name: actionType, status: axiosError?.response?.status, error: axiosError }),
      );
      throw axiosError;
    })
    .finally(() => {
      dispatch(hideLoading());
    });
};

/**
 * convert table sort config to api sort query
 * {name: 'desc} = ['Name desc']
 */
export const generateMultiSortCriteria = (sort: TableSort<any>) => {
  if (!sort) {
    return '';
  }

  return keys(sort).map(key => `${startCase(key).replace(' ', '')} ${sort[key]}`);
};

/**
 * Convert sort query string to TableSort config
 * ['Name desc'] = {name: 'desc'}
 */
export const resolveSortCriteriaFromUrl = (input: string[]): TableSort<any> | {} => {
  if (isEmpty(input)) {
    return {};
  }

  return input.reduce((acc: any, sort: string) => {
    const fields = sort.split(' ');
    if (fields.length !== 2) {
      return { ...acc };
    }

    return { ...acc, [lowerFirst(fields[0])]: fields[1] };
  }, {});
};

/**
 * get the fiscal year (ending in) based on the current date.
 */
export const getCurrentFiscalYear = (): number => {
  const now = moment();
  return now.month() >= 4 ? now.add(1, 'years').year() : now.year();
};

export const formatDate = (date?: string | Date) => {
  return !!date ? moment(date).format('YYYY-MM-DD') : '';
};

/**
 * Format the passed string date assuming the date was recorded in UTC (as is the case with the pims API server).
 * Returns a date formatted for display in the current time zone of the user.
 * @param date utc date/time string.
 */
export const formatApiDateTime = (date: string | undefined) => {
  return !!date
    ? moment
        .utc(date)
        .local()
        .format('YYYY-MM-DD hh:mm a')
    : '';
};

/**
 * Get the current date time in the UTC timezone. This allows the frontend to create timestamps that are compatible with timestamps created by the API.
 */
export const generateUtcNowDateTime = () =>
  moment(new Date())
    .utc()
    .format('YYYY-MM-DDTHH:mm:ss.SSSSSSS');

/**
 * Returns true only if the passed mouse event occurred within the last 500ms, or the mouse event is null.
 */
export const isMouseEventRecent = (timeStamp?: number) =>
  !!timeStamp && timeStamp >= (document?.timeline?.currentTime ?? 0) - 500;

/**
 * postalCodeFormatter takes the specified postal code and formats it with a space in the middle
 * @param {string} postal The target postal to be formatted
 */
export const postalCodeFormatter = (postal: string) => {
  const regex = /([a-zA-z][0-9][a-zA-z])[\s-]?([0-9][a-zA-z][0-9])/;
  const format = postal.match(regex);
  if (format !== null && format.length === 3) {
    postal = `${format[1]} ${format[2]}`;
  }
  return postal.toUpperCase();
};

/**
 * Using the administrative areas code set, find the matching municipality returned by the parcel layer, if present.
 * @param administrativeAreas the full list from the administrative areas code set.
 * @param layerMunicipality the municipality returned by the layer.
 */
export const getAdminAreaFromLayerData = (
  administrativeAreas: ILookupCode[],
  layerMunicipality: string,
) => {
  let administrativeArea = _.find(administrativeAreas, { name: layerMunicipality });
  if (administrativeArea) {
    return administrativeArea;
  }
  if (!!layerMunicipality?.length) {
    const splitLayerMunicipality = layerMunicipality.split(',');
    if (splitLayerMunicipality.length === 2) {
      const formattedLayerMunicipality = `${splitLayerMunicipality[1].trim()} ${splitLayerMunicipality[0].trim()}`;
      let match = _.find(administrativeAreas, { name: formattedLayerMunicipality });
      if (!match) {
        match = _.find(administrativeAreas, { name: splitLayerMunicipality[0].trim() });
      }
      return match;
    }
  }
};

export const getCurrentFiscal = (fiscals: IFiscal[], key: FiscalKeys) => {
  const currentFiscal = getCurrentFiscalYear();
  return _.find(fiscals, { fiscalYear: currentFiscal, key: key });
};

const currentYear = moment().year();

/**
 * Get the most recent evaluation matching the current year and passed evaluation type.
 * @param evaluations a list of evaluations belonging to this property
 * @param key only return evaluations matching this key
 */
export const getCurrentYearEvaluation = (
  evaluations: IEvaluation[],
  key: EvaluationKeys,
): IEvaluation | undefined => {
  const currentYearEvaluations = (evaluations ?? []).filter(
    (evaluation: IEvaluation) => moment(evaluation.date, 'YYYY-MM-DD').year() === currentYear,
  );
  return getMostRecentEvaluation(currentYearEvaluations, key);
};

/**
 * Get the most recent evaluation matching the passed evaluation type.
 * @param evaluations a list of evaluations belonging to this property
 * @param key only return evaluations matching this key
 */
export const getMostRecentEvaluation = (
  evaluations: IEvaluation[],
  key: EvaluationKeys,
): IEvaluation | undefined => {
  const mostRecentEvaluation = _.find(_.orderBy(evaluations ?? [], 'date', 'desc'), { key: key });
  return mostRecentEvaluation;
};

/**
 * Get the most recent appraisal, restricted to within one year of either the current year or the year the property was disposed on.
 * @param evaluations all evaluations for the property.
 * @param disposedOn the date the property was disposed on, may be undefined.
 */
export const getMostRecentAppraisal = (
  evaluations: IEvaluation[],
  disposedOn?: Date | string,
): IEvaluation | undefined => {
  let targetDate = moment();
  if (disposedOn) {
    targetDate = moment(disposedOn, 'YYYY-MM-DD');
  }
  const evaluationsForYear = _.filter(evaluations ?? [], evaluation => {
    return (
      moment
        .duration(moment(evaluation.date, 'YYYY-MM-DD').diff(targetDate))
        .abs()
        .asYears() < 1
    );
  });
  return getMostRecentEvaluation(evaluationsForYear, EvaluationKeys.Appraised);
};
