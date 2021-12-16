import { ILookupCode } from './../store/slices/lookupCodes/interfaces/ILookupCode';
export const mockLookups: Partial<ILookupCode>[] = [
  {
    id: 2,
    key: '1f50e237-76c4-49f0-ab1d-af41173c2d3d',
    name: 'Organization Administrator',
    description: "Administrator of the user's organization.",
    isDisabled: false,
    isPublic: false,
    displayOrder: 0,
    type: 'PimsRole',
    rowVersion: 1,
  },
  {
    id: 5,
    key: 'ea4f4dee-d528-4164-91b4-b051779f45ee',
    name: 'Real Estate Analyst',
    description: 'Real Estate Analyst can manage properties within their organization.',
    isDisabled: false,
    isPublic: true,
    displayOrder: 0,
    type: 'PimsRole',
    rowVersion: 1,
  },
  {
    id: 4,
    key: '1cd7b265-525c-4dc6-ac26-1eed55811048',
    name: 'Real Estate Manager',
    description: 'Real Estate Manager can manage properties within their agency.',
    isDisabled: false,
    isPublic: true,
    displayOrder: 0,
    type: 'PimsRole',
    rowVersion: 1,
  },
  {
    id: 1,
    key: '150544a9-6700-4754-8697-41b8804f1727',
    name: 'System Administrator',
    description: 'System Administrator of the PIMS solution.',
    isDisabled: false,
    isPublic: false,
    displayOrder: 0,
    type: 'PimsRole',
    rowVersion: 1,
  },
  {
    id: 3,
    key: 'e3f06599-b748-436d-8b1b-e499dcf966ef',
    name: 'Undetermined',
    description: 'The user has an undetermined role with their organization.',
    isDisabled: false,
    isPublic: false,
    displayOrder: 0,
    type: 'PimsRole',
    rowVersion: 1,
  },
  {
    id: 5,
    code: 'BOB123',
    name: "Bob's Property Management",
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganization',
    appCreateTimestamp: '2021-12-08T08:44:10.413',
    updatedOn: '2021-12-08T08:44:10.413',
    updatedByName: 'Leasse Seed Data',
    rowVersion: 1,
  },
  {
    id: 3,
    code: 'DQ4EVA',
    name: 'Dairy Queen Forever! Property Management',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganization',
    appCreateTimestamp: '2021-12-08T08:44:10.413',
    updatedOn: '2021-12-08T08:44:10.413',
    updatedByName: 'Leasse Seed Data',
    rowVersion: 1,
  },
  {
    id: 2,
    code: 'LILMOUSE',
    name: 'French Mouse Property Management',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganization',
    appCreateTimestamp: '2021-12-08T08:44:10.413',
    updatedOn: '2021-12-08T08:44:10.413',
    updatedByName: 'Leasse Seed Data',
    rowVersion: 1,
  },
  {
    id: 1,
    code: 'MOTI2',
    name: 'Ministry of Transportation and Infrastructure',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganization',
    appCreateTimestamp: '2021-12-08T08:44:10.233',
    updatedOn: '2021-12-08T08:44:10.233',
    updatedByName: 'Seed Data',
    rowVersion: 1,
  },
  {
    id: 4,
    code: 'DAKATZ',
    name: 'Pussycat Property Management',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganization',
    appCreateTimestamp: '2021-12-08T08:44:10.413',
    updatedOn: '2021-12-08T08:44:10.413',
    updatedByName: 'Leasse Seed Data',
    rowVersion: 1,
  },
  {
    id: 'BCDIST',
    name: 'BC District Office',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: 'BCMIN',
    name: 'BC Ministry',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: 'BCREG',
    name: 'BC Regional Office',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: 'FIRSTNAT',
    name: 'First Nations',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: 'OTHER',
    name: 'Other',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: 'PARTNER',
    name: 'Partnership',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: 'PRIVATE',
    name: 'Private owner',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: 'RAILWAY',
    name: 'Railway corporation',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: 'REALTOR',
    name: 'Real estate corporation',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsOrganizationType',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'CA',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsCountry',
    rowVersion: 1,
  },
  {
    id: '3',
    name: 'MX',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsCountry',
    rowVersion: 1,
  },
  {
    id: '4',
    name: 'OTHER',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsCountry',
    rowVersion: 1,
  },
  {
    id: '2',
    name: 'US',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsCountry',
    rowVersion: 1,
  },
  {
    id: '1',
    name: 'BC',
    isDisabled: false,
    displayOrder: 10,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'AB',
    isDisabled: false,
    displayOrder: 20,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'MB',
    isDisabled: false,
    displayOrder: 30,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'NL',
    isDisabled: false,
    displayOrder: 40,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'NB',
    isDisabled: false,
    displayOrder: 50,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'NS',
    isDisabled: false,
    displayOrder: 60,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'NT',
    isDisabled: false,
    displayOrder: 70,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'NU',
    isDisabled: false,
    displayOrder: 80,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'ON',
    isDisabled: false,
    displayOrder: 90,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'PE',
    isDisabled: false,
    displayOrder: 100,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'QC',
    isDisabled: false,
    displayOrder: 110,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'SK',
    isDisabled: false,
    displayOrder: 120,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '1',
    name: 'YT',
    isDisabled: false,
    displayOrder: 130,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'AK',
    isDisabled: false,
    displayOrder: 140,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'AL',
    isDisabled: false,
    displayOrder: 150,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'AR',
    isDisabled: false,
    displayOrder: 160,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'AZ',
    isDisabled: false,
    displayOrder: 170,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'CA',
    isDisabled: false,
    displayOrder: 180,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'CO',
    isDisabled: false,
    displayOrder: 190,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'CT',
    isDisabled: false,
    displayOrder: 200,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'DC',
    isDisabled: false,
    displayOrder: 210,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'DE',
    isDisabled: false,
    displayOrder: 220,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'FL',
    isDisabled: false,
    displayOrder: 230,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'GA',
    isDisabled: false,
    displayOrder: 240,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'HI',
    isDisabled: false,
    displayOrder: 250,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'IA',
    isDisabled: false,
    displayOrder: 260,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'ID',
    isDisabled: false,
    displayOrder: 270,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'IL',
    isDisabled: false,
    displayOrder: 280,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'IN',
    isDisabled: false,
    displayOrder: 290,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'KS',
    isDisabled: false,
    displayOrder: 300,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'KY',
    isDisabled: false,
    displayOrder: 310,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'LA',
    isDisabled: false,
    displayOrder: 320,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'MA',
    isDisabled: false,
    displayOrder: 330,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'MD',
    isDisabled: false,
    displayOrder: 340,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'ME',
    isDisabled: false,
    displayOrder: 350,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'MI',
    isDisabled: false,
    displayOrder: 360,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'MN',
    isDisabled: false,
    displayOrder: 370,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'MO',
    isDisabled: false,
    displayOrder: 380,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'MS',
    isDisabled: false,
    displayOrder: 390,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'MT',
    isDisabled: false,
    displayOrder: 400,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'NC',
    isDisabled: false,
    displayOrder: 410,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'ND',
    isDisabled: false,
    displayOrder: 420,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'NE',
    isDisabled: false,
    displayOrder: 430,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'NH',
    isDisabled: false,
    displayOrder: 440,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'NJ',
    isDisabled: false,
    displayOrder: 450,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'NM',
    isDisabled: false,
    displayOrder: 460,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'NV',
    isDisabled: false,
    displayOrder: 470,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'NY',
    isDisabled: false,
    displayOrder: 480,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'OH',
    isDisabled: false,
    displayOrder: 490,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'OK',
    isDisabled: false,
    displayOrder: 500,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'OR',
    isDisabled: false,
    displayOrder: 510,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'PA',
    isDisabled: false,
    displayOrder: 520,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'RI',
    isDisabled: false,
    displayOrder: 530,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'SC',
    isDisabled: false,
    displayOrder: 540,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'SD',
    isDisabled: false,
    displayOrder: 550,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'TN',
    isDisabled: false,
    displayOrder: 560,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'TX',
    isDisabled: false,
    displayOrder: 570,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'UT',
    isDisabled: false,
    displayOrder: 580,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'VA',
    isDisabled: false,
    displayOrder: 590,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'VT',
    isDisabled: false,
    displayOrder: 600,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'WA',
    isDisabled: false,
    displayOrder: 610,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'WI',
    isDisabled: false,
    displayOrder: 620,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'WV',
    isDisabled: false,
    displayOrder: 630,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '2',
    name: 'WY',
    isDisabled: false,
    displayOrder: 640,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '3',
    name: 'MX',
    isDisabled: false,
    displayOrder: 900,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '4',
    name: 'OTHER',
    isDisabled: false,
    displayOrder: 99995,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    id: '4',
    name: 'XX',
    isDisabled: false,
    displayOrder: 99999,
    type: 'PimsProvinceState',
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    isDisabled: false,
    displayOrder: 0,
    rowVersion: 0,
  },
  {
    id: 'COREOPER',
    name: 'Core Operational',
    isDisabled: false,
    displayOrder: 1,
    type: 'PimsPropertyClassificationType',
    rowVersion: 0,
  },
  {
    id: 'CORESTRAT',
    name: 'Core Strategic',
    isDisabled: false,
    displayOrder: 2,
    type: 'PimsPropertyClassificationType',
    rowVersion: 0,
  },
  {
    id: 'SURPACTIVE',
    name: 'Surplus Active',
    isDisabled: false,
    displayOrder: 3,
    type: 'PimsPropertyClassificationType',
    rowVersion: 0,
  },
  {
    id: 'SURPENCUM',
    name: 'Surplus Encumbered',
    isDisabled: false,
    displayOrder: 4,
    type: 'PimsPropertyClassificationType',
    rowVersion: 0,
  },
  {
    id: 'DISPOSED',
    name: 'Disposed',
    isDisabled: false,
    displayOrder: 5,
    type: 'PimsPropertyClassificationType',
    rowVersion: 0,
  },
  {
    id: 'DEMOLISHED',
    name: 'Demolished',
    isDisabled: false,
    displayOrder: 6,
    type: 'PimsPropertyClassificationType',
    rowVersion: 0,
  },
  {
    id: 'SUBDIVIDED',
    name: 'Subdivided',
    isDisabled: false,
    displayOrder: 7,
    type: 'PimsPropertyClassificationType',
    rowVersion: 0,
  },
  {
    id: 'HA',
    name: 'Hectare',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsAreaUnitType',
    rowVersion: 0,
  },
  {
    id: 'M2',
    name: 'Meters sq',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsAreaUnitType',
    rowVersion: 0,
  },
  {
    id: 'CL',
    name: 'Crown Land Reserve',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyTenureType',
    rowVersion: 0,
  },
  {
    id: 'CR',
    name: 'Closed Road',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyTenureType',
    rowVersion: 0,
  },
  {
    id: 'PL',
    name: 'Payable Contract',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyTenureType',
    rowVersion: 0,
  },
  {
    id: 'RW',
    name: 'Right of Way',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyTenureType',
    rowVersion: 0,
  },
  {
    id: 'TM',
    name: 'Titled Land - MoTI',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyTenureType',
    rowVersion: 0,
  },
  {
    id: 'TT',
    name: 'Titled Land - TFA',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyTenureType',
    rowVersion: 0,
  },
  {
    id: 'BUILD',
    name: 'Buiding',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyType',
    rowVersion: 0,
  },
  {
    id: 'LAND',
    name: 'Land',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyType',
    rowVersion: 0,
  },
  {
    id: 'SUBDIV',
    name: 'Subdivison',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsPropertyType',
    rowVersion: 0,
  },
  {
    id: 'PYBLBCTFA',
    name: 'Payable (BCTFA as tenant)',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePayRvblType',
    rowVersion: 0,
  },
  {
    id: 'PYBLMOTI',
    name: 'Payable (MOTI as tenant)',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePayRvblType',
    rowVersion: 0,
  },
  {
    id: 'RCVBL',
    name: 'Receivable',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePayRvblType',
    rowVersion: 0,
  },
  {
    id: 'BCFERRIES',
    name: 'BC Ferries',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'BCTRANSIT',
    name: 'BC Transit',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'BELLETERM',
    name: 'Belleville Terminal',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'COMMBLDG',
    name: 'Commercial Buildings',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'LCLGOVT',
    name: 'Local Government/RCMP',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'OTHER',
    name: 'Other Licencing',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'RAILTRAIL',
    name: 'Rail Trails',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'RESRENTAL',
    name: 'Residential Rentals',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'TMEP',
    name: 'TMEP',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'TRANSLINK',
    name: 'TransLink',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'UTILITY',
    name: 'Utilities',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseProgramType',
    rowVersion: 0,
  },
  {
    id: 'ACTIVE',
    name: 'Active',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseStatusType',
    rowVersion: 0,
  },
  {
    id: 'DRAFT',
    name: 'Draft',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseStatusType',
    rowVersion: 0,
  },
  {
    id: 'EXPIRED',
    name: 'Expired',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseStatusType',
    rowVersion: 0,
  },
  {
    id: 'TERMINATED',
    name: 'Terminated',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseStatusType',
    rowVersion: 0,
  },
  {
    id: 'LICONSTRC',
    name: 'License to Construct',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LIMOTIPRJ',
    name: 'MOTI Project Use License',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LIOCCACCS',
    name: 'License of Occupation (access)',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LIOCCTTLD',
    name: 'License of Occupation (titled)',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LIOCCUSE',
    name: 'License of Occupation (use)',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LIOCCUTIL',
    name: 'License of Occupation (utilities)',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LIPPUBHWY',
    name: 'License of Prov Public Highway',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LSGRND',
    name: 'Ground Lease',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LSREG',
    name: 'Lease - Registered',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'LSUNREG',
    name: 'Lease - Unregistered',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'MANUFHOME',
    name: 'Manufactured Home Act',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'OTHER',
    name: 'Other',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'RESLNDTEN',
    name: 'Residential Tenancy Act',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'ROADXING',
    name: 'Road Crossing',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseLicenseType',
    rowVersion: 0,
  },
  {
    id: 'AGRIC',
    name: 'Agricultural',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseCategoryType',
    rowVersion: 0,
  },
  {
    id: 'COMM',
    name: 'Commercial',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseCategoryType',
    rowVersion: 0,
  },
  {
    id: 'GOVGOV',
    name: "Gov't to Gov't",
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseCategoryType',
    rowVersion: 0,
  },
  {
    id: 'INDUS',
    name: 'Industrial',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseCategoryType',
    rowVersion: 0,
  },
  {
    id: 'OTHER',
    name: 'Other',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseCategoryType',
    rowVersion: 0,
  },
  {
    id: 'RESID',
    name: 'Residential',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseCategoryType',
    rowVersion: 0,
  },
  {
    id: 'ACCCCOM',
    name: 'Access (Industrial/Commercial)',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'ACCRES',
    name: 'Access (Residential)',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'AGRIC',
    name: 'Agricultural',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'BCFERRIES',
    name: 'BC Ferries',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'CAMPING',
    name: 'Camping',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'COMMBLDG',
    name: 'Commercial Building',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'EMERGSVCS',
    name: 'Emergency Services',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'ENCROACH',
    name: 'Encroachment',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'FENCEGATE',
    name: 'Fencing/Gate',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'GARDENING',
    name: 'Gardening',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'GRAVEL',
    name: 'Gravel',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'GRAZING',
    name: 'Grazing',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'LOGGING',
    name: 'Logging/Timber Harvest',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'MARINEFAC',
    name: 'Marine Facility',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'MOBILEHM',
    name: 'Mobile Home Pad',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'MTCYARD',
    name: 'Maintenance Yard',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'OTHER',
    name: 'Other*',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'PARK',
    name: 'Park',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'PARKING',
    name: 'Parking',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'PARKNRID',
    name: 'Park and Ride',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'PIPELINE',
    name: 'Pipeline',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'PRELOAD',
    name: 'Preload',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'PRVTRANS',
    name: 'Private transportation',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'RAILWAY',
    name: 'Railway',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'RESTAREA',
    name: 'Rest Area/Pullout',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'SIDEWALK',
    name: 'Sidewalks/Landscaping',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'SIGNAGE',
    name: 'Signage',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'SPCLEVNT',
    name: 'Special Event',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'STGNGAREA',
    name: 'Staging Area',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'STKPILING',
    name: 'Stockpiling',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'STORAGE',
    name: 'Storage',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'TOURINFO',
    name: 'Tourist Info',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'TRAIL',
    name: 'Trail',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'UTILINFRA',
    name: 'Utilities-infrastructure',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'UTILOHDXG',
    name: 'Utilities-overhead xing',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'UTILUGDXG',
    name: 'Utilities-underground xing',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'WATERRES',
    name: 'Water Reservoir',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'WEIGHSCL',
    name: 'Weigh Scale',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'XING',
    name: 'Crossing',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeasePurposeType',
    rowVersion: 0,
  },
  {
    id: 'HQ',
    name: 'Headquarters',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseResponsibilityType',
    rowVersion: 0,
  },
  {
    id: 'PROJECT',
    name: 'Project',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseResponsibilityType',
    rowVersion: 0,
  },
  {
    id: 'REGION',
    name: 'Region',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseResponsibilityType',
    rowVersion: 0,
  },
  {
    id: 'HQ',
    name: 'Headquarters',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseInitiatorType',
    rowVersion: 0,
  },
  {
    id: 'PROJECT',
    name: 'Project',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseInitiatorType',
    rowVersion: 0,
  },
  {
    id: 'REGION',
    name: 'Region',
    isDisabled: false,
    displayOrder: 0,
    type: 'PimsLeaseInitiatorType',
    rowVersion: 0,
  },
];