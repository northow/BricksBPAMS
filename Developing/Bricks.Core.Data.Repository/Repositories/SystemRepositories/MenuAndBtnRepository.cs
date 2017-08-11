using Bricks.Core.Data.Entity;
using Bricks.Core.Data.IRepositories.ISystemRepositories;
using Bricks.Core.Data.Entity.SystemEntity;
using System;
using System.Collections.Generic;
using Autofac;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Bricks.Component.Tools;

namespace Bricks.Core.Data.Repository.Repositories.SystemRepositories
{
    class MenuAndBtnRepository : IMenuAndBtnRepository
    {

        public void MenuMapBtn(int MenuID,List<MenuMappingButton> mplist)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
               var menuRepository=dal.GetRepository<Menu>();
               var menuBtnRepository = dal.GetRepository<MenuMappingButton>();
               var menuModel = menuRepository.Get(filter: a => a.MenuID == MenuID, includeProperties: "mbList").FirstOrDefault();

               menuBtnRepository.Delete(menuModel.mbList.ToList());

               menuBtnRepository.Insert(mplist);

               dal.Save();
            }
        }

        public List<MenuMappingButton> GetMBList(MenuMappingButton model)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                var listMb = dal.GetRepository<MenuMappingButton>().Get(filter: a => a.ButtonID == model.ButtonID).ToList();
                return listMb;
            }
        }
    }
}
