<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertTeacher.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="insertteachers" ContentPlaceHolderID="MainContent" runat="server">
    <h1>INSERT NEW TEACHER</h1>
    <div>
        <label>Insert teacher name:</label>
        <asp:TextBox runat="server" ID="insert_teacherfname" ></asp:TextBox>
    </div>
    <div>
        <label>Insert teacher last name: </label>
        <asp:TextBox runat="server" ID="insert_teacherlname" ></asp:TextBox>
    </div>
    <div>
        <label>Insert employee number:</label>
        <asp:TextBox runat="server" ID="insert_teachernum" ></asp:TextBox>
   
    </div>
    <div>
        <label>Insert hire date:</label>
        <asp:TextBox runat="server" ID="insert_hiredate" ></asp:TextBox>
    </div>
    <div>
        <label>Insert salary:</label>
        <asp:TextBox runat="server" ID="insert_salary" ></asp:TextBox>
    </div>
    <div>
        <asp:Button runat="server" text="Add" PostBackUrl="~/teachers.aspx"  />
    </div>
</asp:Content>
