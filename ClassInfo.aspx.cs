using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string classid = Request.QueryString["classid"];
            //if (String.IsNullOrEmpty(classid)) valid = false;
            if (valid)
            {
                var db = new Schooldb();
                Dictionary<String, String> class_info = db.FindClass(int.Parse(classid));

                if (class_info.Count > 0)
                {
                    class_code.InnerHtml = class_info["CLASSCODE"];
                    class_name.InnerHtml = class_info["CLASSNAME"];
                    class_start.InnerHtml = class_info["STARTDATE"];
                    class_end.InnerHtml = class_info["FINISHDATE"];
                    teacher_name.InnerHtml = class_info["TEACHERNAME"];
                }
                else
                {
                    valid = false;
                }
            }
            if (!valid)
            {
                classinfo.InnerHtml = "Wrong details entered!!";
            }

        }
    }
}