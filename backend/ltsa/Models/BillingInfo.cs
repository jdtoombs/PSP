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
    /// Indicate the billing information for the order Read-only for third party software
    /// </summary>
    [DataContract]
    public partial class BillingInfo
    {
        /// <summary>
        /// Billing model as per myLTSA deposit account setting # One of: * REG – Regular account * TAX – Local government tax-purpose account * PROV – Provincial government account 
        /// </summary>
        /// <value>Billing model as per myLTSA deposit account setting # One of: * REG – Regular account * TAX – Local government tax-purpose account * PROV – Provincial government account </value>
        [JsonConverter(typeof(StringEnumConverter))]
        public enum BillingModelEnum
        {
            /// <summary>
            /// Enum REG for value: REG
            /// </summary>
            [EnumMember(Value = "REG")]
            REG = 1,
            /// <summary>
            /// Enum TAX for value: TAX
            /// </summary>
            [EnumMember(Value = "TAX")]
            TAX = 2,
            /// <summary>
            /// Enum PROV for value: PROV
            /// </summary>
            [EnumMember(Value = "PROV")]
            PROV = 3
        }
        /// <summary>
        /// Billing model as per myLTSA deposit account setting # One of: * REG – Regular account * TAX – Local government tax-purpose account * PROV – Provincial government account 
        /// </summary>
        /// <value>Billing model as per myLTSA deposit account setting # One of: * REG – Regular account * TAX – Local government tax-purpose account * PROV – Provincial government account </value>
        [DataMember(Name = "billingModel", EmitDefaultValue = false)]
        public BillingModelEnum? BillingModel { get; set; }
        /// <summary>
        /// Initializes a new instance of the <see cref="BillingInfo" /> class.
        /// </summary>
        /// <param name="billingModel">Billing model as per myLTSA deposit account setting # One of: * REG – Regular account * TAX – Local government tax-purpose account * PROV – Provincial government account .</param>
        /// <param name="productName">Product name.</param>
        /// <param name="productCode">Product code.</param>
        /// <param name="feeExempted">Indicate if the billing transaction is fee exempted or not.</param>
        /// <param name="productFee">Product fee.</param>
        /// <param name="serviceCharge">Tax on service charge.</param>
        /// <param name="subtotalFee">Product fee + service charge.</param>
        /// <param name="productFeeTax">Tax on product fee.</param>
        /// <param name="serviceChargeTax">Tax on service charge.</param>
        /// <param name="totalTax">Tax on product fee + tax on service charge.</param>
        /// <param name="totalFee">Subtotal fee + total tax.</param>
        public BillingInfo(BillingModelEnum? billingModel = default(BillingModelEnum?), string productName = default(string), string productCode = default(string), bool? feeExempted = default(bool?), double? productFee = default(double?), double? serviceCharge = default(double?), double? subtotalFee = default(double?), double? productFeeTax = default(double?), double? serviceChargeTax = default(double?), double? totalTax = default(double?), double? totalFee = default(double?))
        {
            this.BillingModel = billingModel;
            this.ProductName = productName;
            this.ProductCode = productCode;
            this.FeeExempted = feeExempted;
            this.ProductFee = productFee;
            this.ServiceCharge = serviceCharge;
            this.SubtotalFee = subtotalFee;
            this.ProductFeeTax = productFeeTax;
            this.ServiceChargeTax = serviceChargeTax;
            this.TotalTax = totalTax;
            this.TotalFee = totalFee;
        }


        /// <summary>
        /// Product name
        /// </summary>
        /// <value>Product name</value>
        [DataMember(Name = "productName", EmitDefaultValue = false)]
        public string ProductName { get; set; }

        /// <summary>
        /// Product code
        /// </summary>
        /// <value>Product code</value>
        [DataMember(Name = "productCode", EmitDefaultValue = false)]
        public string ProductCode { get; set; }

        /// <summary>
        /// Indicate if the billing transaction is fee exempted or not
        /// </summary>
        /// <value>Indicate if the billing transaction is fee exempted or not</value>
        [DataMember(Name = "feeExempted", EmitDefaultValue = false)]
        public bool? FeeExempted { get; set; }

        /// <summary>
        /// Product fee
        /// </summary>
        /// <value>Product fee</value>
        [DataMember(Name = "productFee", EmitDefaultValue = false)]
        public double? ProductFee { get; set; }

        /// <summary>
        /// Tax on service charge
        /// </summary>
        /// <value>Tax on service charge</value>
        [DataMember(Name = "serviceCharge", EmitDefaultValue = false)]
        public double? ServiceCharge { get; set; }

        /// <summary>
        /// Product fee + service charge
        /// </summary>
        /// <value>Product fee + service charge</value>
        [DataMember(Name = "subtotalFee", EmitDefaultValue = false)]
        public double? SubtotalFee { get; set; }

        /// <summary>
        /// Tax on product fee
        /// </summary>
        /// <value>Tax on product fee</value>
        [DataMember(Name = "productFeeTax", EmitDefaultValue = false)]
        public double? ProductFeeTax { get; set; }

        /// <summary>
        /// Tax on service charge
        /// </summary>
        /// <value>Tax on service charge</value>
        [DataMember(Name = "serviceChargeTax", EmitDefaultValue = false)]
        public double? ServiceChargeTax { get; set; }

        /// <summary>
        /// Tax on product fee + tax on service charge
        /// </summary>
        /// <value>Tax on product fee + tax on service charge</value>
        [DataMember(Name = "totalTax", EmitDefaultValue = false)]
        public double? TotalTax { get; set; }

        /// <summary>
        /// Subtotal fee + total tax
        /// </summary>
        /// <value>Subtotal fee + total tax</value>
        [DataMember(Name = "totalFee", EmitDefaultValue = false)]
        public double? TotalFee { get; set; }
    }
}
