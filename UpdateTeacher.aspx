<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateTeacher.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="updateteacher" ContentPlaceHolderID="MainContent" runat="server">
    <h1>UPDATE TEACHER</h1>
    <div>
        <label>Teacher to update (Insert teacher ID): </label>
        <asp:TextBox runat="server" ID="update_tclassid" ></asp:TextBox>
    </div>
    <div>
    <label>Column to update: </label>
        <asp:DropDownList runat="server" ID="update_tcolumn">
            <asp:ListItem Text="Teacher First Name" Value="teacherfname"></asp:ListItem>
            <asp:ListItem Text="Teacher Last Name" Value="teacherlname"></asp:ListItem>
            <asp:ListItem Text="Employee Number" Value="employeenumber"></asp:ListItem>
            <asp:ListItem Text="Salary" Value="salary"></asp:ListItem>

        </asp:DropDownList>
    </div>
    <div>
        <label>New value: </label>
        <asp:TextBox runat="server" ID="insert_tupdate" ></asp:TextBox>
    </div>
    <div>
        <asp:Button runat="server" text="Update" PostBackUrl="~/teachers.aspx"  />
    </div>
</asp:Content>
