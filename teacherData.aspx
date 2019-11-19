<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="teacherData.aspx.cs" Inherits="Assignment_2ab.teacherData" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="teacher_data" runat="server">
        <h2>Complete Details :</h2>
        
        Teacher First name: <span id="teacher_fname" runat="server"></span><br />
        Teacher Last name: <span id="teacher_lname" runat="server"></span><br />
        Employee Number: <span id="employee_number" runat="server"></span><br />
        Hire Date: <span id="hire_date" runat="server"></span><br />
        Salary: <span id="salary" runat="server"></span><br />
    </div>

</asp:Content>
