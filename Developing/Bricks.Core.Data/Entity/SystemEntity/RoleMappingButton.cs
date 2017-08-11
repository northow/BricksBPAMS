﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.Entity.SystemEntity
{
   public class RoleMappingButton
    {
      public int ID {get;set;}

      public int RoleID{get;set;}

      public int MenuID{get;set;}

      public int ButtonID { get; set; }

      public Button ButtonModel { get; set; }

      public Role RoleModel { get; set; }
    }
}
