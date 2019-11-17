<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="Assignment_2ab.students" %>
<asp:Content ID="students_list" ContentPlaceHolderID="MainContent" runat="server">
    <h1>STUDENTS</h1>
    <div id="student_nav">
        <asp:label for="student_search" runat="server">SEARCH:</asp:label>
        <asp:TextBox ID="student_search" runat="server"></asp:TextBox>
        <asp:Button runat="server" text="submit" />

        <div id="sql_debugger" runat="server"></div>
    </div>

    <div class="_table" runat="server">
        <div class="listitem">
            <div class="col4">FIRST NAME</div>
            <div class="col4">LAST NAME</div>
            <div class="col4">STUDENT NAME</div>
            <div class="col4last">ENROLMENT DATE</div>  
         </div>
        <div id="students_result" runat="server">
        </div>
    </div>
</asp:Content>
