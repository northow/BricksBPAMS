using BricksBPAMSFrame.Common;
using System.Web;
using System.Web.Mvc;

namespace BricksBPAMSFrame
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new ErrorHandleAttribute());
        }
    }
}