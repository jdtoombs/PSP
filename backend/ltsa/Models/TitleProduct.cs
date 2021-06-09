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
    /// TitleProduct
    /// </summary>
    [DataContract]
    public partial class TitleProduct : ProductParent
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TitleProduct" /> class.
        /// </summary>
        /// <param name="title">title.</param>
        public TitleProduct(Title title = default(Title), string href = default(string)) : base(href)
        {
            this.Title = title;
        }

        /// <summary>
        /// Gets or Sets Title
        /// </summary>
        [DataMember(Name = "title", EmitDefaultValue = false)]
        public Title Title { get; set; }
    }
}
