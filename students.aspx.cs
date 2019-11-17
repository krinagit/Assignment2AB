using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
	public partial class students : System.Web.UI.Page
	{
        //refference taken from in class example done by chrintine bittle
		protected void Page_Load(object sender, EventArgs e)
		{
            students_result.InnerHtml = "";

            string search_key = "";

            if(Page.IsPostBack)
            {
                search_key = student_search.Text;
            }
            string query = "select * from STUDENTS";

            if(search_key != "")
            {
                query += " WHERE STUDENTFNAME LIKE '%" + search_key + "%'";
                query += " OR STUDENTLNAME LIKE '%" + search_key + "%'";
                query += " OR STUDENTNUMBER LIKE '%" + search_key + "%'";
            }

            var db = new Schooldb();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach(Dictionary<String,String> row in rs)
            {
                students_result.InnerHtml += "<div class=\"listitem\">";
                string studentid = row["STUDENTID"];

                string studentfirstname = row["STUDENTFNAME"]; 
                students_result.InnerHtml += "<div class=\"col4\"><a href=\"ShowStudent.aspx?studentid=" + studentid + "\">" + studentfirstname + "</a></div>";

                string studentlastname = row["STUDENTLNAME"];
                students_result.InnerHtml += "<div class=\"col4\">" + studentlastname + "</div>";

                string studentnumber = row["STUDENTNUMBER"];
                students_result.InnerHtml += "<div class=\"col4\">" + studentnumber + "</div>";

                string enrolmentdate = row["ENROLMENTDATE"];
                students_result.InnerHtml += "<div class=\"col4last\">" + enrolmentdate + "</div>";

                students_result.InnerHtml += "</div>";


            }
		}
	}
}