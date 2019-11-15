<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowStudent.aspx.cs" Inherits="Assignment_2ab.ShowStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div id="student" runat="server">
        <h2>Complete Details ::</h2>
        First Name: <span id="student_fname" runat="server"></span><br />
        Last Name: <span id="student_lname" runat="server"></span><br />
        Student Number: <span id="student_number" runat="server"></span><br />
        Enrolment Date: <span id="enrolment_date" runat="server"></span><br />
    </div>

</asp:Content>
