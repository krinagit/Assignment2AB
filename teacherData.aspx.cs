using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
    public partial class teacherData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string teacherid = Request.QueryString["teacherid"];
            if (String.IsNullOrEmpty(teacherid)) valid = false;
            if (valid)
            {
                var db = new Schooldb();
                Dictionary<String, String> teacher_data = db.FindTeacher(Int32.Parse(teacherid));

                if (teacher_data.Count > 0)
                {
                   
                    teacher_fname.InnerHtml = teacher_data["TEACHERFNAME"];
                    teacher_lname.InnerHtml = teacher_data["TEACHERLNAME"];
                    employee_number.InnerHtml = teacher_data["EMPLOYEENUMBER"];
                    hire_date.InnerHtml = teacher_data["HIREDATE"];
                    salary.InnerHtml = teacher_data["SALARY"];
                }
                else
                {
                    valid = false;
                }
            }
            if (!valid)
            {
                teacher_data.InnerHtml = "Wrong details entered!!";
            }

        }
    }
}