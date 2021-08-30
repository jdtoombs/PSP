using Mapster;
using Entity = Pims.Dal.Entities;
using Model = Pims.Api.Areas.Admin.Models.Organization;

namespace Pims.Api.Areas.Admin.Mapping.Organization
{
    public class OrganizationMap : IRegister
    {
        public void Register(TypeAdapterConfig config)
        {
            config.NewConfig<Entity.Organization, Model.OrganizationModel>()
                .Map(dest => dest.Id, src => src.Id)
                .Map(dest => dest.ParentId, src => src.ParentId)
                .Inherits<Entity.BaseAppEntity, Api.Models.BaseAppModel>();

            config.NewConfig<Model.OrganizationModel, Entity.Organization>()
                .Map(dest => dest.Id, src => src.Id)
                .Map(dest => dest.ParentId, src => src.ParentId)
                .Inherits<Api.Models.BaseAppModel, Entity.BaseAppEntity>();
        }
    }
}
