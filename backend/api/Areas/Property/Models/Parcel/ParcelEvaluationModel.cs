using System;
using Model = Pims.Api.Models;

namespace Pims.Api.Areas.Property.Models.Parcel
{
    public class ParcelEvaluationModel : Model.BaseAppModel
    {
        #region Properties
        public long ParcelId { get; set; }

        public DateTime Date { get; set; }

        public string Key { get; set; }

        public decimal Value { get; set; }

        public string Note { get; set; }

        public string Firm { get; set; }
        #endregion
    }
}
