using System;

namespace Pims.Dal.Entities
{
    /// <summary>
    /// PersonOrganization class, provides an entity for the datamodel to manage a list of addresses for a person.
    /// </summary>
    public partial class PimsPersonOrganization : IDisableBaseAppEntity
    {
        #region Constructors
        public PimsPersonOrganization() { }

        /// <summary>
        /// Create a new instance of a PimsPersonOrganization class.
        /// </summary>
        /// <param name="person"></param>
        /// <param name="organization"></param>
        public PimsPersonOrganization(PimsPerson person, PimsOrganization organization) : this()
        {
            this.Person = person ?? throw new ArgumentNullException(nameof(person));
            this.PersonId = person.PersonId;
            this.Organization = organization ?? throw new ArgumentNullException(nameof(organization));
            this.OrganizationId = organization.OrganizationId;
        }
        #endregion
    }
}
