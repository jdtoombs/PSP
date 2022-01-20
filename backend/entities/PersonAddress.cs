using System;

namespace Pims.Dal.Entities
{
    /// <summary>
    /// PersonAddress class, provides an entity for the datamodel to manage a list of addresses for a person.
    /// </summary>
    public partial class PimsPersonAddress : IDisableBaseAppEntity
    {
        #region Constructors
        public PimsPersonAddress() {}

        /// <summary>
        /// Create a new instance of a PimsPersonAddress class.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="address"></param>
        public PimsPersonAddress(PimsPerson person, PimsAddress address):this()
        {
            this.Person = person ?? throw new ArgumentNullException(nameof(person));
            this.PersonId = person.PersonId;
            this.Address = address ?? throw new ArgumentNullException(nameof(address));
            this.AddressId = address.AddressId;
        }
        #endregion
    }
}
