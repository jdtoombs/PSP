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
    /// TitleOwner
    /// </summary>
    [DataContract]
    public partial class TitleOwner
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TitleOwner" /> class.
        /// </summary>
        /// <param name="lastNameOrCorpName1">Free text containing either the Owner Last Name or the Corporate Name. (required).</param>
        /// <param name="lastNameOrCorpName2">Provides additional space for storing the Owner Last Name or the Corporate Name..</param>
        /// <param name="givenName">Owner Given Name; this attribute is empty if the Owner is a corporation..</param>
        /// <param name="incorporationNumber">Free text specifying the Incorporation Number..</param>
        /// <param name="occupationDescription">Free text field used to retain information  describing the occupation of an individual who is a title holder..</param>
        /// <param name="address">address.</param>
        public TitleOwner(string lastNameOrCorpName1 = default(string), string lastNameOrCorpName2 = default(string), string givenName = default(string), string incorporationNumber = default(string), string occupationDescription = default(string), OwnerAddress address = default(OwnerAddress))
        {
            // to ensure "lastNameOrCorpName1" is required (not null)
            if (lastNameOrCorpName1 == null)
            {
                throw new InvalidDataException("lastNameOrCorpName1 is a required property for TitleOwner and cannot be null");
            }
            else
            {
                this.LastNameOrCorpName1 = lastNameOrCorpName1;
            }
            this.LastNameOrCorpName2 = lastNameOrCorpName2;
            this.GivenName = givenName;
            this.IncorporationNumber = incorporationNumber;
            this.OccupationDescription = occupationDescription;
            this.Address = address;
        }

        /// <summary>
        /// Free text containing either the Owner Last Name or the Corporate Name.
        /// </summary>
        /// <value>Free text containing either the Owner Last Name or the Corporate Name.</value>
        [DataMember(Name = "lastNameOrCorpName1", EmitDefaultValue = false)]
        public string LastNameOrCorpName1 { get; set; }

        /// <summary>
        /// Provides additional space for storing the Owner Last Name or the Corporate Name.
        /// </summary>
        /// <value>Provides additional space for storing the Owner Last Name or the Corporate Name.</value>
        [DataMember(Name = "lastNameOrCorpName2", EmitDefaultValue = false)]
        public string LastNameOrCorpName2 { get; set; }

        /// <summary>
        /// Owner Given Name; this attribute is empty if the Owner is a corporation.
        /// </summary>
        /// <value>Owner Given Name; this attribute is empty if the Owner is a corporation.</value>
        [DataMember(Name = "givenName", EmitDefaultValue = false)]
        public string GivenName { get; set; }

        /// <summary>
        /// Free text specifying the Incorporation Number.
        /// </summary>
        /// <value>Free text specifying the Incorporation Number.</value>
        [DataMember(Name = "incorporationNumber", EmitDefaultValue = false)]
        public string IncorporationNumber { get; set; }

        /// <summary>
        /// Free text field used to retain information  describing the occupation of an individual who is a title holder.
        /// </summary>
        /// <value>Free text field used to retain information  describing the occupation of an individual who is a title holder.</value>
        [DataMember(Name = "occupationDescription", EmitDefaultValue = false)]
        public string OccupationDescription { get; set; }

        /// <summary>
        /// Gets or Sets Address
        /// </summary>
        [DataMember(Name = "address", EmitDefaultValue = false)]
        public OwnerAddress Address { get; set; }
    }
}
