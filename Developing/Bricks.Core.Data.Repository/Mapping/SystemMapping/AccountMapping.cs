using Bricks.Core.Data.Entity;
using Bricks.Core.Data.SystemEntity.Entity;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.Repository.Mapping.SystemMapping
{
    public class AccountMapping : EntityTypeConfiguration<Account>
    {
        public AccountMapping() {
            HasKey(A => A.AccountID);
            this.ToTable("Account", "Test");
            this.Property(a => a.AccountID).HasColumnName("AccountID");
            this.Property(a => a.Total).HasColumnName("Total");

            HasRequired(b => b.Student).
            WithMany().HasForeignKey(b => b.TestID);
        }
    }
}
