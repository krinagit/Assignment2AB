<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InsertClass.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>INSERT THE DETAILS OF NEW CLASS</h1>
    <div class="operations">
        <div class="space">
            <label>Class code:</label>
            <asp:TextBox runat="server" ID="insert_classcode" ></asp:TextBox>
        </div>
        <div class="space">
            <label>Teacher ID: </label>
            <asp:TextBox runat="server" ID="insert_teacherid" ></asp:TextBox>
        </div>
        <div class="space">
        <label>Choose semester: </label>
            <asp:DropDownList runat="server" ID="insert_semester">
                <asp:ListItem Text="Fall 2018" Value="2018-09-04"></asp:ListItem>
                <asp:ListItem Text="Winter 2019" Value="2019-01-08"></asp:ListItem>
                <asp:ListItem Text="Fall 2019" Value="2019-09-04"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="space">
            <label>Class name:</label>
            <asp:TextBox runat="server" ID="insert_classname" ></asp:TextBox>
        </div>
        <div class="space">
            <asp:Button runat="server" text="Add" PostBackUrl="~/classlist.aspx"  />
        </div>
    </div>
</asp:Content>
