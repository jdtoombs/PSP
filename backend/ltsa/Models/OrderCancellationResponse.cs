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
    /// Order cancellation record
    /// </summary>
    [DataContract]
    public partial class OrderCancellationResponse
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="OrderCancellationResponse" /> class.
        /// </summary>
        /// <param name="orderId">orderId.</param>
        /// <param name="orderCancellationID">orderCancellationID.</param>
        /// <param name="status">status.</param>
        public OrderCancellationResponse(string orderId = default(string), string orderCancellationID = default(string), string status = default(string))
        {
            this.OrderId = orderId;
            this.OrderCancellationID = orderCancellationID;
            this.Status = status;
        }

        /// <summary>
        /// Gets or Sets OrderId
        /// </summary>
        [DataMember(Name = "orderId", EmitDefaultValue = false)]
        public string OrderId { get; set; }

        /// <summary>
        /// Gets or Sets OrderCancellationID
        /// </summary>
        [DataMember(Name = "orderCancellationID", EmitDefaultValue = false)]
        public string OrderCancellationID { get; set; }

        /// <summary>
        /// Gets or Sets Status
        /// </summary>
        [DataMember(Name = "status", EmitDefaultValue = false)]
        public string Status { get; set; }
    }
}
