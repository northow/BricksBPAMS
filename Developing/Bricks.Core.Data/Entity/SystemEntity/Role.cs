using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Bricks.Core.Data.Entity;

namespace Bricks.Core.Data.Entity.SystemEntity
{
    public class Role : BaseEntity
    {
       public Role() {
           MenuList = new List<Menu>();
       }

       public int RoleID { get; set; }

       public string RoleName { get; set; }

       public string RoleDescription { get; set; }

       public DateTime CreateTime { get; set; }

       public DateTime? UpdateTime { get; set; }

       [JsonIgnore]
       public ICollection<User> UserList { get; set; }

       public ICollection<Menu> MenuList { get; set; }

       public ICollection<RoleMappingButton> rbList { get; set; }
  
    }
}
