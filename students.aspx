<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="Assignment_2ab.students" %>
<asp:Content ID="students_list" ContentPlaceHolderID="MainContent" runat="server">
    <h1>STUDENTS</h1>
    <div class ="modify-interface">
        <asp:Button runat="server" text="Add" PostBackUrl="~/InsertStudent.aspx" />
        <asp:Button runat="server" text="Update" PostBackUrl="~/UpdateStudent.aspx" />
        <asp:Button runat="server" text="Delete" PostBackUrl="~/DeleteStudent.aspx"/>
    </div>
    <div id="student_nav">
        <asp:label for="student_search" runat="server">SEARCH:</asp:label>
        <asp:TextBox ID="student_search" runat="server"></asp:TextBox>
        <asp:Button runat="server" text="submit" />

        <div id="sql_debugger" runat="server"></div>
    </div>

    <div class="_table" runat="server" >
        <div class="listitem" id="students_header">
            <div class="col4">FIRST NAME</div>
            <div class="col4">LAST NAME</div>
            <div class="col4">STUDENT NUMBER</div>
            <div class="col4last">ENROLMENT DATE</div>  
         </div>
        <div id="students_result" runat="server">
        </div>
    </div>
</asp:Content>
