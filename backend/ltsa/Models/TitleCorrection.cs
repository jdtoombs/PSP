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
    /// TitleCorrection
    /// </summary>
    [DataContract]
    public partial class TitleCorrection
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TitleCorrection" /> class.
        /// </summary>
        /// <param name="reason">Title correction reason (required).</param>
        /// <param name="originatingCorrectionApplication">The Application that initiated the Title correction (required).</param>
        /// <param name="enteredDate">Entered date and time (required).</param>
        /// <param name="relatedChargeNumber">The Charge affected by this correction, if any. (required).</param>
        /// <param name="relatedLegalNotationNumber">The Legal Notation affected by this correction, if any. (required).</param>
        public TitleCorrection(string reason = default(string), string originatingCorrectionApplication = default(string), DateTime? enteredDate = default(DateTime?), string relatedChargeNumber = default(string), string relatedLegalNotationNumber = default(string))
        {
            // to ensure "reason" is required (not null)
            if (reason == null)
            {
                throw new InvalidDataException("reason is a required property for TitleCorrection and cannot be null");
            }
            else
            {
                this.Reason = reason;
            }
            // to ensure "originatingCorrectionApplication" is required (not null)
            if (originatingCorrectionApplication == null)
            {
                throw new InvalidDataException("originatingCorrectionApplication is a required property for TitleCorrection and cannot be null");
            }
            else
            {
                this.OriginatingCorrectionApplication = originatingCorrectionApplication;
            }
            // to ensure "enteredDate" is required (not null)
            if (enteredDate == null)
            {
                throw new InvalidDataException("enteredDate is a required property for TitleCorrection and cannot be null");
            }
            else
            {
                this.EnteredDate = enteredDate;
            }
            // to ensure "relatedChargeNumber" is required (not null)
            if (relatedChargeNumber == null)
            {
                throw new InvalidDataException("relatedChargeNumber is a required property for TitleCorrection and cannot be null");
            }
            else
            {
                this.RelatedChargeNumber = relatedChargeNumber;
            }
            // to ensure "relatedLegalNotationNumber" is required (not null)
            if (relatedLegalNotationNumber == null)
            {
                throw new InvalidDataException("relatedLegalNotationNumber is a required property for TitleCorrection and cannot be null");
            }
            else
            {
                this.RelatedLegalNotationNumber = relatedLegalNotationNumber;
            }
        }

        /// <summary>
        /// Title correction reason
        /// </summary>
        /// <value>Title correction reason</value>
        [DataMember(Name = "reason", EmitDefaultValue = false)]
        public string Reason { get; set; }

        /// <summary>
        /// The Application that initiated the Title correction
        /// </summary>
        /// <value>The Application that initiated the Title correction</value>
        [DataMember(Name = "originatingCorrectionApplication", EmitDefaultValue = false)]
        public string OriginatingCorrectionApplication { get; set; }

        /// <summary>
        /// Entered date and time
        /// </summary>
        /// <value>Entered date and time</value>
        [DataMember(Name = "enteredDate", EmitDefaultValue = false)]
        public DateTime? EnteredDate { get; set; }

        /// <summary>
        /// The Charge affected by this correction, if any.
        /// </summary>
        /// <value>The Charge affected by this correction, if any.</value>
        [DataMember(Name = "relatedChargeNumber", EmitDefaultValue = false)]
        public string RelatedChargeNumber { get; set; }

        /// <summary>
        /// The Legal Notation affected by this correction, if any.
        /// </summary>
        /// <value>The Legal Notation affected by this correction, if any.</value>
        [DataMember(Name = "relatedLegalNotationNumber", EmitDefaultValue = false)]
        public string RelatedLegalNotationNumber { get; set; }
    }
}
