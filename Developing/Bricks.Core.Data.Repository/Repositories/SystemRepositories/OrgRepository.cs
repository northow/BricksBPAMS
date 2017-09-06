using Bricks.Component.Tools;
using Bricks.Core.Data.IRepositories.ISystemRepositories;
using Bricks.Core.Data.Entity.SystemEntity;
using Autofac;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Z.EntityFramework.Plus;

namespace Bricks.Core.Data.Repository.Repositories.SystemRepositories
{
    class OrgRepository : IOrgRepository
    {
        public void Delete()
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                dal.GetRepository<Org>().Get().Delete();
                dal.Save();
            }
        }

        public Org GetSingle(int ID)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                //return dal.GetRepository<Org>().Get(a => a.ID == ID, includeProperties: "Account").FirstOrDefault<Org>();
                return null;
            }
        }
    }
}
