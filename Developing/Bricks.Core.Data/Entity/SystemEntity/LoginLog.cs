using Bricks.Core.Data.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.Entity.SystemEntity
{
    public class LoginLog : BaseEntity
    {
       public int LoginID { get; set; }

       public string LoginName { get; set; }

       public string LoginNicker { get; set; }

       public string LoginIP { get; set; }

       public DateTime LoginTime { get; set; }
    }
}
