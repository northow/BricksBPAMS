using Bricks.Core.Data.Entity;
using Bricks.Core.Data.Entity.SystemEntity;
using BricksBPAMSFrame.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BricksBPAMSFrame.Controllers
{
    public class OrgController : BaseController
    {
        //
        // GET: /Org/
        public ActionResult Index()
        {
            //地区字典
            var area = this.DicCategory.DiCategoryList().Where(a => a.Category == "地区").FirstOrDefault();
            var areaList = area.DicValueList.Where(a => a.Enabled == true).ToList();
            ViewBag.area = areaList;
            ViewBag.jsonArea = SerializeObject(areaList);
            return View();
        }

        //获取数据集合
        [HttpPost]
        public ActionResult GetList(Org model)
        {
            //得到我们的数据集合 是一个tuple<int,list<News>>
            var result = this.OrgRepository.GetList(model);

            // JsonResult是本人自己封装的方法，
            // 解析tuple 并返回JSON格式的信息,具体看BaseController 里面的方法实现
            return this.JsonResult(result);
        }

        [HttpPost]
        public ActionResult AddOrEdit(Org model)
        {
            if (model.ID == 0)
            {
                model.CreateTime = DateTime.Now;
                this.OrgRepository.Add(model);
            }
            else
            {
                this.OrgRepository.Modify(model);
            }
            return Json(new ResultEntity { result = true });
        }

        /// <summary>
        /// 验证机构编码
        /// </summary>
        /// <param name="model"></param>
        /// <returns></returns>
        public ActionResult ValidOrgCode(Org model)
        {
            var orgModel = OrgRepository.GetSingle(model);
            if (orgModel != null)
            {
                return Content(model.ID > 0 && model.ID == orgModel.ID ? "true" : "false");
            }
            else
            {
                return Content("true");
            }
        }
	}
}