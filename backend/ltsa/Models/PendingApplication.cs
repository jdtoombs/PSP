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
    /// PendingApplication
    /// </summary>
    [DataContract]
    public partial class PendingApplication
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="PendingApplication" /> class.
        /// </summary>
        /// <param name="applicationNumber">Application number of the pending application.</param>
        /// <param name="transactionType">Description of the transaction type.</param>
        /// <param name="defected">Defected indicator.</param>
        public PendingApplication(string applicationNumber = default(string), string transactionType = default(string), bool? defected = default(bool?))
        {
            this.ApplicationNumber = applicationNumber;
            this.TransactionType = transactionType;
            this.Defected = defected;
        }

        /// <summary>
        /// Application number of the pending application
        /// </summary>
        /// <value>Application number of the pending application</value>
        [DataMember(Name = "applicationNumber", EmitDefaultValue = false)]
        public string ApplicationNumber { get; set; }

        /// <summary>
        /// Description of the transaction type
        /// </summary>
        /// <value>Description of the transaction type</value>
        [DataMember(Name = "transactionType", EmitDefaultValue = false)]
        public string TransactionType { get; set; }

        /// <summary>
        /// Defected indicator
        /// </summary>
        /// <value>Defected indicator</value>
        [DataMember(Name = "defected", EmitDefaultValue = false)]
        public bool? Defected { get; set; }
    }
}
