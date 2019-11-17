using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
    public partial class showTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string teacherid = Request.QueryString["teacherid"];
            if (String.IsNullOrEmpty(teacherid)) valid = false;
            if (valid)
            {
                var db = new Schooldb();
                Dictionary<String, String> student_record = db.FindStudent(Int32.Parse(teacherid));

                if (student_record.Count > 0)
                {
                    teacher_fname.InnerHtml = student_record["TEACHERFNAME"];
                    teacher_lname.InnerHtml = student_record["TEACHERLNAME"];
                    employee_number.InnerHtml = student_record["EMPLOYEENUMBER"];
                    hire_date.InnerHtml = student_record["HIREDATE"];
                    salary.InnerHtml = student_record["SALARY"];
                }
                else
                {
                    valid = false;
                }
            }
            if (!valid)
            {
                teacher_details.InnerHtml = "Wrong details entered!!";
            }
        }
    }
}