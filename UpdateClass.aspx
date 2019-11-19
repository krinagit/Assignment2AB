<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateClass.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="updateclass" ContentPlaceHolderID="MainContent" runat="server">
    <h1>UPDATE CLASS DETAILS</h1>
    <div class="operations">
        <div class="space">
            <label>Insert class ID: </label>
            <asp:TextBox runat="server" ID="update_classid" ></asp:TextBox>
        </div>
        <div class="space">
        <label>Column to update: </label>
            <asp:DropDownList runat="server" ID="update_column">
                <asp:ListItem Text="Teacher ID" Value="teacherid"></asp:ListItem>
                <asp:ListItem Text="Start Date" Value="startdate"></asp:ListItem>
                <asp:ListItem Text="Finish Date" Value="finishdate"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="space">
            <label>New value: </label>
            <asp:TextBox runat="server" ID="insert_update" ></asp:TextBox>
        </div>
        <div class="space">
            <asp:Button runat="server" text="Update" PostBackUrl="~/classlist.aspx"  />
        </div>
    </div>
</asp:Content>
