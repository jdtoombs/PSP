using Mapster;
using Pims.Core.Extensions;
using System;
using BModel = Pims.Api.Models;
using Entity = Pims.Dal.Entities;
using Model = Pims.Api.Areas.Property.Models.Parcel;

namespace Pims.Api.Areas.Property.Mapping.Parcel
{
    public class AddressMap : IRegister
    {
        public void Register(TypeAdapterConfig config)
        {
            config.NewConfig<Entity.Address, Model.AddressModel>()
                .Map(dest => dest.Id, src => src.Id)
                .Map(dest => dest.Line1, src => src.Address1)
                .Map(dest => dest.Line2, src => src.Address2)
                .Map(dest => dest.AdministrativeArea, src => src.AdministrativeArea)
                .Map(dest => dest.ProvinceId, src => src.ProvinceId)
                .Map(dest => dest.Province, src => src.Province == null ? null : src.Province.Name)
                .Map(dest => dest.Postal, src => src.Postal.FormatAsPostal())
                .Inherits<Entity.BaseAppEntity, BModel.BaseAppModel>();


            config.NewConfig<Model.AddressModel, Entity.Address>()
                .Map(dest => dest.Id, src => src.Id)
                .Map(dest => dest.Address1, src => src.Line1)
                .Map(dest => dest.Address2, src => src.Line2)
                .Map(dest => dest.AdministrativeArea, src => src.AdministrativeArea)
                .Map(dest => dest.ProvinceId, src => src.ProvinceId)
                .Map(dest => dest.Province, src => String.IsNullOrWhiteSpace(src.Province) ? null : new Entity.Province(src.ProvinceId, src.Province))
                .Map(dest => dest.Postal, src => src.Postal.Replace(" ", ""))
                .Inherits<BModel.BaseAppModel, Entity.BaseAppEntity>();
        }
    }
}
