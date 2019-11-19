<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteClass.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="deleteclass" ContentPlaceHolderID="MainContent" runat="server">
    <h1>DELETE CLASS</h1>
    <div class="operations">
    <div class="space">
        <label>Insert class ID: </label>
        <asp:TextBox runat="server" ID="delete_classid" ></asp:TextBox>
    </div>
    <div class="space">
        <asp:Button runat="server" text="Delete" PostBackUrl="~/classlist.aspx"  />
    </div>
    </div>
</asp:Content>
