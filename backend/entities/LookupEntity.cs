using System;
using System.ComponentModel.DataAnnotations.Schema;

namespace Pims.Dal.Entities
{
    /// <summary>
    /// LookupEntity class, provides an entity for the datamodel to manage entities that represent codified values.
    /// </summary>
    public abstract class LookupEntity : BaseEntity, ILookupEntity
    {
        #region Properties
        /// <summary>
        /// get/set - Primary key for lookup record.
        /// </summary>
        public abstract long Id { get; set; }

        /// <summary>
        /// get/set - The name of the code.
        /// </summary>
        [Column("NAME", Order = 93)]
        public string Name { get; set; }

        /// <summary>
        /// get/set - Whether this code is disabled.
        /// </summary>
        [Column("IS_DISABLED", Order = 95)]
        public bool IsDisabled { get; set; }

        /// <summary>
        /// get/set - The sort order of the lookup item.
        /// </summary>
        [Column("DISPLAY_ORDER", Order = 96)]
        public int SortOrder { get; set; }
        #endregion

        #region Constructors
        /// <summary>
        /// Create a new instance of a LookupEntity class.
        /// </summary>
        public LookupEntity() { }

        /// <summary>
        /// Create a new instance of a LookupEntity class.
        /// </summary>
        /// <param name="name"></param>
        public LookupEntity(string name)
        {
            if (String.IsNullOrWhiteSpace(name)) throw new ArgumentException($"Argument '{nameof(name)}' must have a valid value.", nameof(name));

            this.Name = name;
        }
        #endregion
    }
}
