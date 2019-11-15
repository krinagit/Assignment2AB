using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
    public partial class ShowStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string studentid = Request.QueryString["studentid"];
            if (String.IsNullOrEmpty(studentid)) valid = false;
            if (valid)
            {
                var db = new Schooldb();
                Dictionary<String, String> student_record = db.FindStudent(Int32.Parse(studentid));

                if(student_record.Count> 0)
                {
                    student_fname.InnerHtml = student_record["STUDENTFNAME"];
                    student_lname.InnerHtml = student_record["STUDENTLNAME"];
                    student_number.InnerHtml = student_record["STUDENTNUMBER"];
                    enrolment_date.InnerHtml = student_record["ENROLMENTDATE"];
                }
                else
                {
                    valid = false;
                }
            }
            if (!valid)
            {
                student.InnerHtml = "Wrong details entered!!";
            }
        }
    }
}