import { Form, Input } from 'components/common/form';
import { PropertyImprovementTypes } from 'constants/propertyImprovementTypes';
import * as Styled from 'features/leases/detail/LeasePages/improvements/styles';
import { getIn, useFormikContext } from 'formik';
import { IFormLease } from 'interfaces';
import { withNameSpace } from 'utils/formUtils';

export interface IImprovementProps {
  disabled?: boolean;
  nameSpace?: string;
}

export const sectionTitles = new Map<string, string>([
  [PropertyImprovementTypes.Residential, 'Residential'],
  [PropertyImprovementTypes.Commercial, 'Commercial'],
  [PropertyImprovementTypes.Other, 'Other Improvements'],
]);

/**
 * Sub-form containing lease improvements details
 * @param {IImprovementProps} param0
 */
export const Improvement: React.FunctionComponent<IImprovementProps> = ({
  disabled,
  nameSpace,
}) => {
  const { values } = useFormikContext<IFormLease>();
  const typeId = getIn(values, withNameSpace(nameSpace, 'propertyImprovementTypeId'));
  const title = sectionTitles.get(typeId) ?? 'N/A';

  return (
    <>
      <Styled.LeaseH3>{title}</Styled.LeaseH3>
      <Styled.FormGrid>
        <Form.Label>Unit #</Form.Label>
        <Input disabled={disabled} field={withNameSpace(nameSpace, 'unit')} />
        <Form.Label>House size:</Form.Label>
        <Input disabled={disabled} field={withNameSpace(nameSpace, 'structureSize')} />
        <Styled.FormDescriptionLabel>Description</Styled.FormDescriptionLabel>
        <Styled.FormDescriptionBody
          rows={5}
          disabled={disabled}
          field={withNameSpace(nameSpace, 'description')}
        />
      </Styled.FormGrid>
    </>
  );
};

export default Improvement;
