﻿using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace Assignment_2ab
{
    //REFERENCE:We are taking this code as a reference from inclass example taught by Christine during our lectures for our assignment2ab

    public class Schooldb
    {
        //things that describe a database
        // - A connection (url, port)
        // - A username
        // - A password
        // - A database

        //do not expose these pieces of information!
        //how do I know these?
        //boot up MAMP, open start page
        //info is right below the PHPmyAdmin link
        //THIS INFO IS FOR A PUBLIC DATABASE THAT I CREATED, IT HAS READ-ONLY ACCESS
        private static string User { get { return "humber_student"; } }
        private static string Password { get { return "humberisgreat123"; } }
        private static string Database { get { return "humber_school"; } }
        private static string Server { get { return "107.180.41.170"; } }
        private static string Port { get { return "3306"; } }

        //ConnectionString is something that we use to connect to a database
        private static string ConnectionString
        {
            get
            {
                return "server = " + Server
                    + "; user = " + User
                    + "; database = " + Database
                    + "; port = " + Port
                    + "; password = " + Password;
            }
        }

        //returns a result set
        //is a list dictionaries
        //a dictionary is like a list but with Key:Value pairs
        //they are also known as "associative arrays"
        public List<Dictionary<String, String>> List_Query(string query)
        {
            MySqlConnection Connect = new MySqlConnection(ConnectionString);

            // INPUT -> (string) SELECT QUERY 
            // e.g. "select * from students";
            // OUTPUT -> (List<Dictionary<String,String>>) RESULT SET 
            // e.g. 
            //[
            //  {"STUDENTFNAME":"SARAH","STUDENTLNAME":"Valdez","STUDENTNUMBER":"N1678","ENROLMENTDATE":"2018-06-18"},
            //  {"STUDENTFNAME":"Jennifer","STUDENTLNAME":"FAULKNER","STUDENTNUMBER":"N1679","ENROLMENTDATE":"2018-08-02"},
            //  {"STUDENTFNAME":"Austin","STUDENTLNAME":"Simon","STUDENTNUMBER":"N1682","ENROLMENTDATE":"2018-06-14"},
            //  ...
            //] 
            List<Dictionary<String, String>> ResultSet = new List<Dictionary<String, String>>();

            // try{} catch{} will attempt to do everything inside try{}
            // if an error happens inside try{}, then catch{} will execute instead.
            // very useful for debugging without the whole program crashing!
            // this can be easily abused and should be used sparingly.
            try
            {
                Debug.WriteLine("Connection Initialized...");
                Debug.WriteLine("Attempting to execute query" + query);
                //open the db connection
                Connect.Open();
                //give the connection a query
                MySqlCommand cmd = new MySqlCommand(query, Connect);
                //grab the result set
                MySqlDataReader resultset = cmd.ExecuteReader();


                //for every row in the result set
                while (resultset.Read())
                {
                    Dictionary<String, String> Row = new Dictionary<String, String>();
                    //for every column in the row
                    for (int i = 0; i < resultset.FieldCount; i++)
                    {
                        Row.Add(resultset.GetName(i), resultset.GetString(i));

                    }

                    ResultSet.Add(Row);
                }//end row
                resultset.Close();


            }
            catch (Exception ex)
            {
                Debug.WriteLine("Something went wrong in the List_Query method!");
                Debug.WriteLine(ex.ToString());

            }

            Connect.Close();
            Debug.WriteLine("Database Connection Terminated.");

            return ResultSet;
        }


        //The objective of this method in the schooldb class is to find a particular student given an integer ID
        //We will return a dictionary because a student is defined as having keys and values
        //for example:
        // {"STUDENTFNAME":"CHRISTINE", "STUDENTLNAME":"BITTLE", "STUDENTNUMBER":"N0000"}
        public Dictionary<String, String> FindStudent(int id)
        {
            //Utilize the connection string
            MySqlConnection Connect = new MySqlConnection(ConnectionString);
            //create a "blank" student so that our method can return something if we're not successful catching student data
            Dictionary<String, String> student = new Dictionary<String, String>();

            //we will try to grab student data from the database, if we fail, a message will appear in Debug>Windows>Output dialogue
            try
            {
                //Build a custom query with the id information provided
                string query = "select * from STUDENTS where studentid = " + id;
                Debug.WriteLine("Connection Initialized...");
                //open the db connection
                Connect.Open();
                //Run out query against the database
                MySqlCommand cmd = new MySqlCommand(query, Connect);
                //grab the result set
                MySqlDataReader resultset = cmd.ExecuteReader();

                //Create a list of students (although we're only trying to get 1)
                List<Dictionary<String, String>> Students = new List<Dictionary<String, String>>();

                //read through the result set
                while (resultset.Read())
                {
                    //information that will store a single student
                    Dictionary<String, String> Student = new Dictionary<String, String>();

                    //Look at each column in the result set row, add both the column name and the column value to our Student dictionary
                    for (int i = 0; i < resultset.FieldCount; i++)
                    {
                        Debug.WriteLine("Attempting to transfer data of " + resultset.GetName(i));
                        Debug.WriteLine("Attempting to transfer data of " + resultset.GetString(i));
                        Student.Add(resultset.GetName(i), resultset.GetString(i));

                    }
                    //Add the student to the list of students
                    Students.Add(Student);
                }

                student = Students[0]; //get the first student

            }
            catch (Exception ex)
            {
                //If something (anything) goes wrong with the try{} block, this block will execute
                Debug.WriteLine("Something went wrong in the find Student method!");
                Debug.WriteLine(ex.ToString());
            }

            Connect.Close();
            Debug.WriteLine("Database Connection Terminated.");

            return student;
        }

        //The objective is find a particular class based on the class Id
        public Dictionary<String, String> FindClass(int id)
        {
            MySqlConnection Connect = new MySqlConnection(ConnectionString);
            Dictionary<String, String>classinfo = new Dictionary<String, String>();
            try
            {
                //QUERY TO GET THE TEACHERS FOR GIVEN CLASS 
                string query = "SELECT CLASSCODE, CLASSNAME, STARTDATE, FINISHDATE, CONCAT(TEACHERLNAME, \", \", TEACHERFNAME) AS TEACHERNAME ";
                query += "FROM CLASSES c JOIN TEACHERS t ON c.TEACHERID = t.TEACHERID ";
                query += "WHERE CLASSID =" + id;

                Debug.WriteLine("Connection Initialized...");
                //open the db connection
                Connect.Open();
                //Run out query against the database
                MySqlCommand cmd = new MySqlCommand(query, Connect);
                //grab the result set
                MySqlDataReader resultset = cmd.ExecuteReader();

                List<Dictionary<String, String>> Classes = new List<Dictionary<String, String>>();

                //read through the result set
                while (resultset.Read())
                {
                    //information that will store the class
                    Dictionary<String, String> Class = new Dictionary<String, String>();

                    //Look at each column in the result set row, add both the column name and the column value to our Class dictionary
                    for (int i = 0; i < resultset.FieldCount; i++)
                    {
                        Debug.WriteLine("Attempting to transfer data of " + resultset.GetName(i));
                        Debug.WriteLine("Attempting to transfer data of " + resultset.GetString(i));
                        Class.Add(resultset.GetName(i), resultset.GetString(i));

                    }
                    //Add the class to the list of classes
                    Classes.Add(Class);
                }

                classinfo = Classes[0]; //first class

            }
            catch (Exception ex)
            {
                //If something (anything) goes wrong with the try{} block, this block will execute
                Debug.WriteLine("Something went wrong in the find Class method!");
                Debug.WriteLine(ex.ToString());
            }

            Connect.Close();
            Debug.WriteLine("Database Connection Terminated.");

            return classinfo;
        }

        public Dictionary<String, String> FindTeacher(int id)
        {
            MySqlConnection Connect = new MySqlConnection(ConnectionString);
            Dictionary<String, String> teacherdata = new Dictionary<String, String>();
            try
            {
                string query = "SELECT * FROM TEACHERS where TEACHERID=" + id;

                Debug.WriteLine("Connection Initialized...");
                //open the db connection
                Connect.Open();
                //Run out query against the database
                MySqlCommand cmd = new MySqlCommand(query, Connect);
                //grab the result set
                MySqlDataReader resultset = cmd.ExecuteReader();

                List<Dictionary<String, String>> Teachers = new List<Dictionary<String, String>>();

                //read through the result set
                while (resultset.Read())
                {
                    //information that will store the teacher
                    Dictionary<String, String> Teacher = new Dictionary<String, String>();

                    //Look at each column in the result set row, add both the column name and the column value to our teachers dictionary
                    for (int i = 0; i < resultset.FieldCount; i++)
                    {
                        Debug.WriteLine("Attempting to transfer data of " + resultset.GetName(i));
                        Debug.WriteLine("Attempting to transfer data of " + resultset.GetString(i));
                        Teacher.Add(resultset.GetName(i), resultset.GetString(i));

                    }
                    //Add the teacher to the list of teachers
                    Teachers.Add(Teacher);
                }

                teacherdata = Teachers[0];

            }
            catch (Exception ex)
            {
                //If something (anything) goes wrong with the try{} block, this block will execute
                Debug.WriteLine("Something went wrong in the find Teacher method!");
                Debug.WriteLine(ex.ToString());
            }

            Connect.Close();
            Debug.WriteLine("Database Connection Terminated.");

            return teacherdata;
        }

    }
   

}