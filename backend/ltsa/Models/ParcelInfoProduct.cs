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
    /// ParcelInfoProduct
    /// </summary>
    [DataContract]
    public partial class ParcelInfoProduct : ProductParent
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="ParcelInfoProduct" /> class.
        /// </summary>
        /// <param name="parcelInfo">parcelInfo.</param>
        public ParcelInfoProduct(ParcelInfo parcelInfo = default(ParcelInfo), string href = default(string)) : base(href)
        {
            this.ParcelInfo = parcelInfo;
        }

        /// <summary>
        /// Gets or Sets ParcelInfo
        /// </summary>
        [DataMember(Name = "parcelInfo", EmitDefaultValue = false)]
        public ParcelInfo ParcelInfo { get; set; }
    }
}
