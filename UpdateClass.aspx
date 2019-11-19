<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateClass.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>INSERT NEW CLASS</h1>
    <div>
        <label>Insert Class Code:</label>
        <asp:TextBox runat="server" ID="insert_classcode" ></asp:TextBox>
    </div>
    <div>
        <label>Insert Teacher ID: </label>
        <asp:TextBox runat="server" ID="insert_teacherid" ></asp:TextBox>
    </div>
    <div>
    <label>Choose Semester: </label>
        <asp:DropDownList runat="server" ID="insert_semester">
            <asp:ListItem Text="Fall 2018" Value="2018-09-04"></asp:ListItem>
            <asp:ListItem Text="Winter 2019" Value="2019-01-08"></asp:ListItem>
            <asp:ListItem Text="Fall 2019" Value="2019-09-04"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div>
        <label>Insert Class Name:</label>
        <asp:TextBox runat="server" ID="insert_classname" ></asp:TextBox>
    </div>
    <div>
        <asp:Button runat="server" text="Add" PostBackUrl="~/classlist.aspx"  />
    </div>
</asp:Content>
