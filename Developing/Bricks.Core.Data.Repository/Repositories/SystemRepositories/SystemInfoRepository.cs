using Bricks.Core.Data.IRepositories.ISystemRepositories;
using Bricks.Core.Data.Entity.SystemEntity;
using System;
using Autofac;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bricks.Component.Tools;

namespace Bricks.Core.Data.Repository.Repositories.SystemRepositories
{
    class SystemInfoRepository : ISystemInfoRepository
    {

        public SystemInfo GetSystemInfo()
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                return dal.GetRepository<SystemInfo>().Get().FirstOrDefault();
           }
        }
    }
}
