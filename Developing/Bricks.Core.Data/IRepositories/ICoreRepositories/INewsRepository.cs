using Bricks.Core.Data.Entity.CoreEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.IRepositories.ICoreRepositories
{
   public interface INewsRepository
    {
       Tuple<int, List<News>> GetNewsList(News model);
    }
}
