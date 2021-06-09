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
    /// CertificateOfCharge
    /// </summary>
    [DataContract]
    public partial class CertificateOfCharge
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="CertificateOfCharge" /> class.
        /// </summary>
        /// <param name="number">Certificate Number (required).</param>
        /// <param name="type">Type of certificate (required).</param>
        /// <param name="issuedDate">The date that the certificate is deemed to have been issued. (required).</param>
        /// <param name="surrenderDate">The date that the certificate was surrended..</param>
        public CertificateOfCharge(string number = default(string), string type = default(string), DateTime? issuedDate = default(DateTime?), DateTime? surrenderDate = default(DateTime?))
        {
            // to ensure "number" is required (not null)
            if (number == null)
            {
                throw new InvalidDataException("number is a required property for CertificateOfCharge and cannot be null");
            }
            else
            {
                this.Number = number;
            }
            // to ensure "type" is required (not null)
            if (type == null)
            {
                throw new InvalidDataException("type is a required property for CertificateOfCharge and cannot be null");
            }
            else
            {
                this.Type = type;
            }
            // to ensure "issuedDate" is required (not null)
            if (issuedDate == null)
            {
                throw new InvalidDataException("issuedDate is a required property for CertificateOfCharge and cannot be null");
            }
            else
            {
                this.IssuedDate = issuedDate;
            }
            this.SurrenderDate = surrenderDate;
        }

        /// <summary>
        /// Certificate Number
        /// </summary>
        /// <value>Certificate Number</value>
        [DataMember(Name = "number", EmitDefaultValue = false)]
        public string Number { get; set; }

        /// <summary>
        /// Type of certificate
        /// </summary>
        /// <value>Type of certificate</value>
        [DataMember(Name = "type", EmitDefaultValue = false)]
        public string Type { get; set; }

        /// <summary>
        /// The date that the certificate is deemed to have been issued.
        /// </summary>
        /// <value>The date that the certificate is deemed to have been issued.</value>
        [DataMember(Name = "issuedDate", EmitDefaultValue = false)]
        public DateTime? IssuedDate { get; set; }

        /// <summary>
        /// The date that the certificate was surrended.
        /// </summary>
        /// <value>The date that the certificate was surrended.</value>
        [DataMember(Name = "surrenderDate", EmitDefaultValue = false)]
        public DateTime? SurrenderDate { get; set; }
    }
}
