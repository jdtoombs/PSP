﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace Pims.Dal.Entities
{
    [Table("PIMS_ACCESS_REQUEST_ORGANIZATION")]
    [Index(nameof(AccessRequestId), Name = "ACRQOR_ACCESS_REQUEST_ID_IDX")]
    [Index(nameof(OrganizationId), nameof(AccessRequestId), Name = "ACRQOR_ORGANIZATION_ACCESS_REQUEST_TUC", IsUnique = true)]
    [Index(nameof(OrganizationId), Name = "ACRQOR_ORGANIZATION_ID_IDX")]
    public partial class PimsAccessRequestOrganization
    {
        [Key]
        [Column("ACCESS_REQUEST_ORGANIZATION_ID")]
        public long AccessRequestOrganizationId { get; set; }
        [Column("ORGANIZATION_ID")]
        public long? OrganizationId { get; set; }
        [Column("ACCESS_REQUEST_ID")]
        public long AccessRequestId { get; set; }
        [Column("IS_DISABLED")]
        public bool? IsDisabled { get; set; }
        [Column("CONCURRENCY_CONTROL_NUMBER")]
        public long ConcurrencyControlNumber { get; set; }
        [Column("APP_CREATE_TIMESTAMP", TypeName = "datetime")]
        public DateTime AppCreateTimestamp { get; set; }
        [Required]
        [Column("APP_CREATE_USERID")]
        [StringLength(30)]
        public string AppCreateUserid { get; set; }
        [Column("APP_CREATE_USER_GUID")]
        public Guid? AppCreateUserGuid { get; set; }
        [Required]
        [Column("APP_CREATE_USER_DIRECTORY")]
        [StringLength(30)]
        public string AppCreateUserDirectory { get; set; }
        [Column("APP_LAST_UPDATE_TIMESTAMP", TypeName = "datetime")]
        public DateTime AppLastUpdateTimestamp { get; set; }
        [Required]
        [Column("APP_LAST_UPDATE_USERID")]
        [StringLength(30)]
        public string AppLastUpdateUserid { get; set; }
        [Column("APP_LAST_UPDATE_USER_GUID")]
        public Guid? AppLastUpdateUserGuid { get; set; }
        [Required]
        [Column("APP_LAST_UPDATE_USER_DIRECTORY")]
        [StringLength(30)]
        public string AppLastUpdateUserDirectory { get; set; }
        [Column("DB_CREATE_TIMESTAMP", TypeName = "datetime")]
        public DateTime DbCreateTimestamp { get; set; }
        [Required]
        [Column("DB_CREATE_USERID")]
        [StringLength(30)]
        public string DbCreateUserid { get; set; }
        [Column("DB_LAST_UPDATE_TIMESTAMP", TypeName = "datetime")]
        public DateTime DbLastUpdateTimestamp { get; set; }
        [Required]
        [Column("DB_LAST_UPDATE_USERID")]
        [StringLength(30)]
        public string DbLastUpdateUserid { get; set; }

        [ForeignKey(nameof(AccessRequestId))]
        [InverseProperty(nameof(PimsAccessRequest.PimsAccessRequestOrganizations))]
        public virtual PimsAccessRequest AccessRequest { get; set; }
        [ForeignKey(nameof(OrganizationId))]
        [InverseProperty(nameof(PimsOrganization.PimsAccessRequestOrganizations))]
        public virtual PimsOrganization Organization { get; set; }
    }
}
