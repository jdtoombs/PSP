using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Pims.Dal.Entities;

namespace Pims.Dal.Configuration
{
    /// <summary>
    /// ClaimConfiguration class, provides a way to configure claims in the database.
    ///</summary>
    public class ClaimConfiguration : BaseEntityConfiguration<Claim>
    {
        #region Methods
        public override void Configure(EntityTypeBuilder<Claim> builder)
        {
            builder.ToTable("Claims");

            builder.HasKey(m => m.Id);
            builder.Property(m => m.Id).IsRequired();
            builder.Property(m => m.Id).ValueGeneratedNever();

            builder.Property(m => m.Name).IsRequired();
            builder.Property(m => m.Name).HasMaxLength(100);

            builder.Property(m => m.Description).HasMaxLength(500);

            builder.HasIndex(m => new { m.Name }).IsUnique();
            builder.HasIndex(m => new { m.IsDisabled, m.Name });

            base.Configure(builder);
        }
        #endregion
    }
}
