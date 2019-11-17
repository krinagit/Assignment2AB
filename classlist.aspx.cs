using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_2ab
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            classes_result.InnerHtml = "";

            string search_key = "";

            if (Page.IsPostBack)
            {
                search_key = classes_search.Text;
            }
            string query = "select * from CLASSES";

            if (search_key != "")
            {
                query += "WHERE CLASSID LIKE '%" + search_key + "%'";
                query += "OR CLASSCODE LIKE '%" + search_key + "%'";
                query += "OR CLASSNAME LIKE '%" + search_key + "%'";
            }

            var db = new Schooldb();
            List<Dictionary<String, String>> rs = db.List_Query(query);
            foreach (Dictionary<String, String> row in rs)
            {
                classes_result.InnerHtml += "<div class=\"listitem\">";
                string classid = row["CLASSID"];

                string classcode = row["CLASSCODE"];
                classes_result.InnerHtml += "<div class=\"col4\">" + classcode + "</div>";

                string classname = row["CLASSNAME"];
                classes_result.InnerHtml += "<div class=\"col4\">" + classname + "</div>";

                string classstartdate = row["STARTDATE"];
                classes_result.InnerHtml += "<div class=\"col4\">" + classstartdate + "</div>";

                string classenddate = row["FINISHDATE"];
                classes_result.InnerHtml += "<div class=\"col4last\">" + classenddate  + "</div>";

                classes_result.InnerHtml += "</div>";


            }

        }
    }
}