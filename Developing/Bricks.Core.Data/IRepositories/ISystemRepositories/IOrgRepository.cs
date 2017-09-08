using Bricks.Core.Data.Entity.SystemEntity;
using Bricks.Core.Data.Entity.SystemEntity.DoEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.IRepositories.ISystemRepositories
{
    /// <summary>
    /// 机构逻辑接口
    /// Create By Labix 2017.09.07
    /// </summary>
    public interface IOrgRepository
    {
        /// <summary>
        /// 新增单个
        /// </summary>
        /// <param name="model"></param>
        void Add(Org model);

        /// <summary>
        /// 删除单个
        /// </summary>
        /// <param name="ID"></param>
        void Delete(int ID);

        /// <summary>
        /// 获取单个
        /// </summary>
        /// <param name="ID"></param>
        /// <returns></returns>
        Org GetSingle(int ID);

        /// <summary>
        /// 获取单个
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        Org GetSingle(Org model);

        /// <summary>
        /// 获取列表
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        Tuple<int, List<Org>> GetList(Org model);

        /// <summary>
        /// 修改单个
        /// </summary>
        /// <param name="model"></param>
        void Modify(Org model);
    }
}
