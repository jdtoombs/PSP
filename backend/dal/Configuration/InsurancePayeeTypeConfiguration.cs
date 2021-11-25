using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Pims.Dal.Entities;
using Pims.Dal.Extensions;

namespace Pims.Dal.Configuration
{
    /// <summary>
    /// InsurancePayeeTypeConfiguration class, provides a way to configure insurance type in the database.
    ///</summary>
    public class InsurancePayeeTypeConfiguration : TypeEntityConfiguration<InsurancePayeeType, string>
    {
        #region Methods
        public override void Configure(EntityTypeBuilder<InsurancePayeeType> builder)
        {
            builder.ToMotiTable();

            builder.HasMotiKey(m => m.Id);
            builder.Property(m => m.Id)
                .IsRequired()
                .HasMaxLength(20)
                .HasComment("Primary key code to identify record");

            base.Configure(builder);
        }
        #endregion
    }
}
