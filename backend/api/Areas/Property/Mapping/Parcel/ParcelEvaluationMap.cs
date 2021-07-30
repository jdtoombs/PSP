using Mapster;
using BModel = Pims.Api.Models;
using Entity = Pims.Dal.Entities;
using Model = Pims.Api.Areas.Property.Models.Parcel;

namespace Pims.Api.Areas.Property.Mapping.Parcel
{
    public class ParcelEvaluationMap : IRegister
    {
        public void Register(TypeAdapterConfig config)
        {
            config.NewConfig<Entity.ParcelEvaluation, Model.ParcelEvaluationModel>()
                .EnumMappingStrategy(EnumMappingStrategy.ByName)
                .Map(dest => dest.ParcelId, src => src.ParcelId)
                .Map(dest => dest.Date, src => src.Date)
                .Map(dest => dest.Key, src => src.Key)
                .Map(dest => dest.Value, src => src.Value)
                .Map(dest => dest.Note, src => src.Note)
                .Map(dest => dest.Firm, src => src.Firm)
                .Inherits<Entity.BaseAppEntity, BModel.BaseAppModel>();


            config.NewConfig<Model.ParcelEvaluationModel, Entity.ParcelEvaluation>()
                .EnumMappingStrategy(EnumMappingStrategy.ByName)
                .Map(dest => dest.ParcelId, src => src.ParcelId)
                .Map(dest => dest.Date, src => src.Date)
                .Map(dest => dest.Key, src => src.Key)
                .Map(dest => dest.Value, src => src.Value)
                .Map(dest => dest.Note, src => src.Note)
                .Map(dest => dest.Firm, src => src.Firm)
                .Inherits<BModel.BaseAppModel, Entity.BaseAppEntity>();
        }
    }
}
