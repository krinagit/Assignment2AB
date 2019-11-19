<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertStudent.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="insertstudents" ContentPlaceHolderID="MainContent" runat="server">
    <h1>INSERT NEW  STUDENT</h1>
    <div class="operations">
    <div>
        <label>Insert student name:</label>
        <asp:TextBox runat="server" ID="insert_studentfname" ></asp:TextBox>
    </div>
    <div>
        <label>Insert student last name: </label>
        <asp:TextBox runat="server" ID="insert_studentlname" ></asp:TextBox>
    </div>
    <div>
        <label>Insert student number:</label>
        <asp:TextBox runat="server" ID="insert_studentnum" ></asp:TextBox>
   
    </div>
    <div>
        <label>Insert enrolment date:</label>
        <asp:TextBox runat="server" ID="insert_enrolmentdate" ></asp:TextBox>
    </div>
    <div>
        <asp:Button runat="server" text="Add" PostBackUrl="~/students.aspx"  />
    </div>
    </div>
</asp:Content>
