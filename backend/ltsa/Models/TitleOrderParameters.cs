/* 
 * Title Direct Search Services
 *
 * Title Direct Search Services
 *
 * OpenAPI spec version: 4.0.1
 * 
 * Generated by: https://github.com/swagger-api/swagger-codegen.git
 */
using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Runtime.Serialization;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System.ComponentModel.DataAnnotations;


namespace Pims.Ltsa.Models
{
    /// <summary>
    /// Parameters required for a title order
    /// </summary>
    [DataContract]
    public partial class TitleOrderParameters
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TitleOrderParameters" /> class.
        /// </summary>
        /// <param name="titleNumber">Title number of the title to be ordered (required).</param>
        /// <param name="landTitleDistrictCode">landTitleDistrictCode.</param>
        /// <param name="includeCancelledInfo">Indicate whether to include cancelled charges, legal notations and corrections on the title (default to false).</param>
        public TitleOrderParameters(string titleNumber = default(string), LandTitleDistrictCode landTitleDistrictCode = default(LandTitleDistrictCode), bool? includeCancelledInfo = false)
        {
            // to ensure "titleNumber" is required (not null)
            if (titleNumber == null)
            {
                throw new InvalidDataException("titleNumber is a required property for TitleOrderParameters and cannot be null");
            }
            else
            {
                this.TitleNumber = titleNumber;
            }
            this.LandTitleDistrictCode = landTitleDistrictCode;
            // use default value if no "includeCancelledInfo" provided
            if (includeCancelledInfo == null)
            {
                this.IncludeCancelledInfo = false;
            }
            else
            {
                this.IncludeCancelledInfo = includeCancelledInfo;
            }
        }

        /// <summary>
        /// Title number of the title to be ordered
        /// </summary>
        /// <value>Title number of the title to be ordered</value>
        [DataMember(Name = "titleNumber", EmitDefaultValue = false)]
        public string TitleNumber { get; set; }

        /// <summary>
        /// Gets or Sets LandTitleDistrictCode
        /// </summary>
        [DataMember(Name = "landTitleDistrictCode", EmitDefaultValue = false)]
        public LandTitleDistrictCode LandTitleDistrictCode { get; set; }

        /// <summary>
        /// Indicate whether to include cancelled charges, legal notations and corrections on the title
        /// </summary>
        /// <value>Indicate whether to include cancelled charges, legal notations and corrections on the title</value>
        [DataMember(Name = "includeCancelledInfo", EmitDefaultValue = false)]
        public bool? IncludeCancelledInfo { get; set; }
    }
}
