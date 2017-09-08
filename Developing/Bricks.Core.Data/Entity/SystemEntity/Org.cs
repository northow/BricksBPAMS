using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.Entity.SystemEntity
{
    /// <summary>
    /// 机构信息
    /// </summary>
    public class Org : BaseEntity
    {
        /// <summary>
        /// 标识ID
        /// </summary>
        public int ID { get; set; }

        /// <summary>
        /// 机构编码
        /// 852001
        /// </summary>
        public string OrgCode { get; set; }

        /// <summary>
        /// 机构名称
        /// 香港建心
        /// </summary>
        public string OrgName { get; set; }

        /// <summary>
        /// 地区Id
        /// 香港/内地...
        /// </summary>
        public int AreaID { get; set; }

        /// <summary>
        /// 是否启用
        /// </summary>
        public bool IsEnabled { get; set; }

        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime CreateTime { get; set; }

        /// <summary>
        /// 备注
        /// </summary>
        public string Remark { get; set; }
    }
}
