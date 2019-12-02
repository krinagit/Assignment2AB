using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
    //I am taking this code as a refference from inclass example taught by Christine during our lectures for our assignment2ab
    public partial class Teachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            teachers_result.InnerHtml = "";

            string search_key = "";

            if (Page.IsPostBack)
            {
                search_key = teachers_search.Text;
            }
            string query = "select TEACHERID, concat(TEACHERFNAME,\", \",TEACHERLNAME) AS 'TEACHERNAME',EMPLOYEENUMBER,HIREDATE,SALARY  from TEACHERS ";

            if (search_key != "")
            {
                query += " WHERE TEACHERID LIKE '%" + search_key + "%'";
                query += " OR TEACHERFNAME LIKE '%" + search_key + "%'";
                query += " OR TEACHERLNAME LIKE '%" + search_key + "%'";
                query += " OR EMPLOYEENUMBER LIKE '%" + search_key + "%'";
                query += " OR HIREDATE LIKE '%" + search_key + "%'";
                query += " OR SALARY LIKE '%" + search_key + "%'";
            }
           

            var db = new Schooldb();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                teachers_result.InnerHtml += "<div class=\"listitem\">";
                string teacherid = row["TEACHERID"];
              //  teachers_result.InnerHtml += "<div class=\"col4\">" + teacherid + "</div>";

                string teachername = row["TEACHERNAME"];
                teachers_result.InnerHtml += "<div class=\"col4\"><a href=\"teacherData.aspx?teacherid=" + teacherid + "\">" + teachername + "</a></div>";

                //string teacherlname = row["TEACHERLNAME"];
                //teachers_result.InnerHtml += "<div class=\"col4\">" + teacherlname + "</div>";

                string employeenumber = row["EMPLOYEENUMBER"];
                teachers_result.InnerHtml += "<div class=\"col4\">" + employeenumber + "</div>";

                string hiredate = row["HIREDATE"];
                teachers_result.InnerHtml += "<div class=\"col4last\">" + hiredate + "</div>";

                string salary = row["SALARY"];
                teachers_result.InnerHtml += "<div class=\"col4last\">" + salary + "</div>";

                teachers_result.InnerHtml += "</div>";


            }

        }
    }
}