using System;
using System.Diagnostics.CodeAnalysis;
using Model = Pims.Api.Models;

namespace Pims.Api.Areas.Admin.Models.Parcel
{
    public class BuildingEvaluationModel : Model.BaseModel, IEquatable<BuildingEvaluationModel>
    {
        #region Properties
        public int BuildingId { get; set; }

        public int FiscalYear { get; set; }

        public float EstimatedValue { get; set; }

        public float AppraisedValue { get; set; }

        public float AssessedValue { get; set; }

        public float NetBookValue { get; set; }
        #endregion

        #region Methods
        public override bool Equals(object obj)
        {
            return Equals(obj as BuildingEvaluationModel);
        }

        public bool Equals([AllowNull] BuildingEvaluationModel other)
        {
            return other != null &&
                base.Equals(other) &&
                BuildingId == other.BuildingId &&
                FiscalYear == other.FiscalYear &&
                EstimatedValue == other.EstimatedValue &&
                AppraisedValue == other.AppraisedValue &&
                AssessedValue == other.AssessedValue &&
                NetBookValue == other.NetBookValue;
        }

        public override int GetHashCode()
        {
            var hash = new HashCode();
            hash.Add(base.GetHashCode());
            hash.Add(BuildingId);
            hash.Add(FiscalYear);
            hash.Add(EstimatedValue);
            hash.Add(AppraisedValue);
            hash.Add(AssessedValue);
            hash.Add(NetBookValue);
            return hash.ToHashCode();
        }
        #endregion
    }
}