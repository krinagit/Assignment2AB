<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertTeacher.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="insertteachers" ContentPlaceHolderID="MainContent" runat="server">
    <h1>INSERT THE DETAILS OF NEW TEACHER</h1>
    <div class="operations">
        <div class="space">
            <label>First name:</label>
            <asp:TextBox runat="server" ID="insert_teacherfname" ></asp:TextBox>
        </div>
        <div class="space">
            <label>Last name: </label>
            <asp:TextBox runat="server" ID="insert_teacherlname" ></asp:TextBox>
        </div>
        <div class="space">
            <label>Employee number:</label>
            <asp:TextBox runat="server" ID="insert_teachernum" ></asp:TextBox>
   
        </div>
        <div class="space">
            <label>Hire date:</label>
            <asp:TextBox runat="server" ID="insert_hiredate" ></asp:TextBox>
        </div>
        <div class="space">
            <label>Insert salary:</label>
            <asp:TextBox runat="server" ID="insert_salary" ></asp:TextBox>
        </div>
        <div class="space">
            <asp:Button runat="server" text="Add" PostBackUrl="~/teachers.aspx"  />
        </div>
    </div>
</asp:Content>
