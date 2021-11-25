using Mapster;
using Pims.Dal.Entities;
using Entity = Pims.Dal.Entities;
using Model = Pims.Api.Areas.Contact.Models.Search;

namespace Pims.Api.Areas.Contact.Mapping.Search
{
    public class ContactMap : IRegister
    {
        public void Register(TypeAdapterConfig config)
        {
            config.NewConfig<Entity.Contact, Model.ContactModel>()
                .Map(dest => dest.Id, src => src.AddressId)
                .Map(dest => dest.PersonId, src => src.PersonId)
                .Map(dest => dest.OrganizationId, src => src.OrganizationId)
                .Map(dest => dest.Summary, src => src.Summary)
                .Map(dest => dest.Surname, src => src.Surname)
                .Map(dest => dest.FirstName, src => src.FirstName)
                .Map(dest => dest.OrganizationName, src => src.OrganizationName)
                .Map(dest => dest.Email, src => src.Person != null ? src.Person.GetEmail() : null)
                .Map(dest => dest.MailingAddress, src => src.MailingAddress)
                .Map(dest => dest.Municipality, src => src.Municipality)
                .Map(dest => dest.ProvinceState, src => src.ProvinceState)
                .Map(dest => dest.IsDisabled, src => src.IsDisabled);
        }
    }
}
