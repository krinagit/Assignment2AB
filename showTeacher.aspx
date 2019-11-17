<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="showTeacher.aspx.cs" Inherits="Assignment_2ab.showTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="teacher_details" runat="server">
        <h2>Complete Details ::</h2>
        Teacher Fname: <span id="teacher_fname" runat="server"></span><br />
        Teacher Lname: <span id="teacher_lname" runat="server"></span><br />
        Employee Number: <span id="employee_number" runat="server"></span><br />
        Hire Date: <span id="hire_date" runat="server"></span><br />
        Salary: <span id="salary" runat="server"></span><br />
    </div>
</asp:Content>
