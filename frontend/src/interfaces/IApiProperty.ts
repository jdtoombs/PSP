import { IAddress, IBuilding, IEvaluation, IFiscal, IParentParcel } from 'interfaces';

export interface IApiProperty {
  id: number;
  parcelId?: number;
  buildingId?: number;
  propertyTypeId: number;
  pid?: string;
  pin?: number | '';
  projectNumbers: string[];
  latitude: number;
  longitude: number;
  classification?: string;
  classificationId: number;
  name: string;
  description: string;
  address?: IAddress;
  landArea: number;
  landLegalDescription: string;
  zoning: string;
  zoningPotential: string;
  organization?: string;
  subOrganization?: string;
  organizationId: number;
  isSensitive: boolean;
  buildings: IBuilding[];
  evaluations: IEvaluation[];
  fiscals: IFiscal[];
  parcels?: IParentParcel[];
  rowVersion?: number;
}
