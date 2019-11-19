<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteStudent.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="deletestudent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>DELETE STUDENT</h1>
     <div class="operations">
    <div class="space">
        <label>Insert student ID: </label>
        <asp:TextBox runat="server" ID="delete_studentid" ></asp:TextBox>
    </div>
    <div class="space">
        <asp:Button runat="server" text="Delete" PostBackUrl="~/students.aspx"  />
    </div>
    </div>
</asp:Content>
