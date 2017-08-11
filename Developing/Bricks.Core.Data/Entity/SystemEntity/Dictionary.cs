﻿using Bricks.Core.Data.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Bricks.Core.Data.Entity.SystemEntity
{
    public class Dictionary : BaseEntity
    {
       public int ID { get; set; }

       public int DicCategoryID { get; set; }

       public string DicValue { get; set; }

       public bool Enabled { get; set; }

       public DateTime CreateTime { get; set; }

       public DateTime? UpdateTime { get; set; }

       public DictionaryCategory DicCategory { get; set; }

       //部门关联人实体
       public List<User> Users { get; set; }
    }
}
