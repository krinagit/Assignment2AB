<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertStudent.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="insertstudents" ContentPlaceHolderID="MainContent" runat="server">
    <h1>INSERT THE DETAILS OF NEW STUDENT</h1>
    <div class="operations">
        <div class="space">
            <label>First name:</label>
            <asp:TextBox runat="server" ID="insert_studentfname" ></asp:TextBox>
        </div>
        <div class="space">
            <label>Last name: </label>
            <asp:TextBox runat="server" ID="insert_studentlname" ></asp:TextBox>
        </div>
        <div class="space">
            <label>Student number:</label>
            <asp:TextBox runat="server" ID="insert_studentnum" ></asp:TextBox>
   
        </div>
        <div class="space">
            <label>Enrolment date:</label>
            <asp:TextBox runat="server" ID="insert_enrolmentdate" ></asp:TextBox>
        </div>
        <div class="space">
            <asp:Button runat="server" text="Add" PostBackUrl="~/students.aspx"  />
        </div>
    </div>
</asp:Content>
