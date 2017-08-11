﻿using Bricks.Core.Data.Entity.SystemEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.IRepositories.ISystemRepositories
{
  public interface IMenuAndBtnRepository
    {
      void MenuMapBtn(int MenuID, List<MenuMappingButton> mplist);

      List<MenuMappingButton> GetMBList(MenuMappingButton model);
    }
}
