using Bricks.Core.Data.Entity.SystemEntity;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.Repository.Mapping.SystemMapping
{
    public class OrgMapping : EntityTypeConfiguration<Org>
    {
        public OrgMapping()
        {
            this.HasKey(a => a.ID);

            this.ToTable("Org", "Ext");
            this.Property(a => a.ID).HasColumnName("ID");
            this.Property(a => a.OrgCode).HasColumnName("OrgCode");
            this.Property(a => a.OrgName).HasColumnName("OrgName");
            this.Property(a => a.AreaID).HasColumnName("AreaID");
            this.Property(a => a.IsEnabled).HasColumnName("IsEnabled");
            this.Property(a => a.CreateTime).HasColumnName("CreateTime");
            this.Property(a => a.Remark).HasColumnName("Remark");
        }
    }
}
