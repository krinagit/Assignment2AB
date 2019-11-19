<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="teachers.aspx.cs" Inherits="Assignment_2ab.Teachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>TEACHERS</h1>
    <div class ="modify-interface">
        <asp:Button runat="server" text="Add" PostBackUrl="~/InsertTeacher.aspx" />
        <asp:Button runat="server" text="Update" PostBackUrl="~/UpdateTeacher.aspx" />
        <asp:Button runat="server" text="Delete" PostBackUrl="~/DeleteTeacher.aspx" />
    </div>
    <div id="teachers_nav">
        <asp:label for="teachers_search" runat="server">SEARCH:</asp:label>
        <asp:TextBox ID="teachers_search" runat="server"></asp:TextBox>
        <asp:Button runat="server" text="submit" />

        <div id="sql_debugger" runat="server"></div>
    </div>

    <div class="_table" runat="server">
        <div class="listitem" id="teachers_header" >
            <%-- <div class="col4">TEACHER ID</div> --%>
            <div class="col4">TEACHER NAME</div>
          <%--   <div class="col4">TEACHER LAST NAME</div> --%>
            <div class="col4">EMPLOYEE NUMBER</div>
            <div class="col4">HIREDATE</div>
            <div class="col4last">SALARY</div>
        </div>

        <div id="teachers_result" runat="server"></div>
    </div>
</asp:Content>
