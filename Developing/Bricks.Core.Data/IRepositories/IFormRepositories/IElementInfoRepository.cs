using Bricks.Core.Data.Entity.FormEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.IRepositories.IFormRepositories
{
   public interface IElementInfoRepository
    {
       List<ElementInfo> GetElementInfoList();
    }
}
