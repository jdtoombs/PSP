using Mapster;
using Model = Pims.Api.Areas.Admin.Models.User;
using Entity = Pims.Dal.Entities;

namespace Pims.Api.Areas.Admin.Mapping.User
{
    public class AccessRequestMap : IRegister
    {

        public void Register(TypeAdapterConfig config)
        {
            config.NewConfig<Entity.AccessRequest, Model.AccessRequestModel>()
                .IgnoreNonMapped(true)
                .Map(dest => dest.Id, src => src.Id)
                .Map(dest => dest.IsDisabled, src => src.IsDisabled)
                .Map(dest => dest.IsGranted, src => src.IsGranted)
                .Map(dest => dest.Agencies, src => src.Agencies)
                .Map(dest => dest.Roles, src => src.Roles)
                .Map(dest => dest.User, src => src.User)
                .Inherits<Entity.BaseEntity, Api.Models.BaseModel>();


            config.NewConfig<Model.AccessRequestModel, Entity.AccessRequest>()
                .IgnoreNonMapped(true)
                .Map(dest => dest.Id, src => src.Id)
                .Map(dest => dest.IsDisabled, src => src.IsDisabled)
                .Map(dest => dest.IsGranted, src => src.IsGranted)
                .Map(dest => dest.Agencies, src => src.Agencies)
                .Map(dest => dest.Roles, src => src.Roles)
                .Map(dest => dest.User, src => src.User)
                .Inherits<Api.Models.BaseModel, Entity.BaseEntity>();
        }
    }
}