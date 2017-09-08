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
using Bricks.Core.Data.Entity.SystemEntity.DoEntity;

namespace Bricks.Core.Data.Repository.Repositories.SystemRepositories
{
    /// <summary>
    /// 机构逻辑实现
    /// Create By Labix 2017.09.07
    /// </summary>
    class OrgRepository : IOrgRepository
    {
        /// <summary>
        /// 删除
        /// </summary>
        public void Delete(int ID)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                dal.GetRepository<Org>().Delete(ID);
                dal.Save();
            }
        }

        /// <summary>
        /// 取单条记录
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        public Org GetSingle(int ID)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                return dal.GetRepository<Org>().Get(a => a.ID == ID).FirstOrDefault<Org>();
            }
        }

        public Org GetSingle(Org model)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                var conditions = ExpandHelper.True<Org>();

                if (!string.IsNullOrEmpty(model.OrgCode))
                    conditions = conditions.And(a => a.OrgCode == model.OrgCode);
                var result = dal.GetRepository<Org>().Get(conditions).FirstOrDefault();
                return result;
            }
        }

        /// <summary>
        /// 列表
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public Tuple<int, List<Org>> GetList(Org model)
        {
            using (var dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                var repository = dal.GetRepository<Org>();
                var conditions = ExpandHelper.True<Org>();
                if (!string.IsNullOrEmpty(model.OrgCode))
                {
                    conditions = conditions.And(a => a.OrgCode.Contains(model.OrgCode));
                }
                if (!string.IsNullOrEmpty(model.OrgName))
                {
                    conditions = conditions.And(a => a.OrgName.Contains(model.OrgName));
                }
                var templist = repository.Get(filter: conditions);

                var count = templist.Count();

                if (model.order != null && model.order.Count() > 0)
                {
                    foreach (var item in model.order)
                    {
                        var column = model.columns.ElementAt(int.Parse(item.column));
                        templist = templist.OrderSort(column.data, item.dir);
                    }
                }

                var result = templist.PageBy(model.pageIndex, model.pageSize).ToList();

                return new Tuple<int, List<Org>>(count, result);
            }
        }

        /// <summary>
        /// 新增
        /// </summary>
        /// <param name="model"></param>
        public void Add(Org model)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                dal.GetRepository<Org>().Insert(model);
                dal.Save();
            }
        }

        /// <summary>
        /// 修改单条
        /// </summary>
        /// <param name="model"></param>
        public void Modify(Org model)
        {
            using (UnitOfWork dal = BaseInfo._container.Resolve<UnitOfWork>())
            {
                //dal.GetRepository<Org>().UpdateSup(model, new List<string>() { "IsEnable", "CreateTime" }, false);
                dal.GetRepository<Org>().Update(model);
                dal.Save();
            }
        }
    }
}
