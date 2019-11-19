<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="classlist.aspx.cs" Inherits="Assignment_2ab.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>CLASSES</h1>
    <div class ="modify-interface">
        <asp:Button runat="server" text="Add" PostBackUrl="~/InsertClass.aspx" />
        <asp:Button runat="server" text="Update" PostBackUrl="~/UpdateClass.aspx" />
        <asp:Button runat="server" text="Delete" PostBackUrl="~/DeleteClass.aspx" />
    </div>
    <div id="classes_nav">
        <asp:label for="classes_search" runat="server">SEARCH:</asp:label>
        <asp:TextBox ID="classes_search" Class="classes_search_box" runat="server"></asp:TextBox>
        <asp:Button runat="server" text="submit" />
        <%/*<asp:label for="semester" runat="server">Choose a semester:</asp:label>
        <asp:DropDownList runat="server" id="semester" AutoPostBack="true">
            <asp:ListItem Text="All" Value="all"></asp:ListItem>
            <asp:ListItem Text="Fall" Value="09"></asp:ListItem>
            <asp:ListItem Text="Winter" Value="01"></asp:ListItem>
        </asp:DropDownList>*/%>

        <div id="sql_debugger" runat="server"></div>
    </div>

    <div id="classes_nav2">
        <asp:label for="semester" runat="server">Choose a semester:</asp:label>
        <asp:DropDownList runat="server" id="semester" AutoPostBack="true">
            <asp:ListItem Text="All" Value="all"></asp:ListItem>
            <asp:ListItem Text="Fall" Value="09"></asp:ListItem>
            <asp:ListItem Text="Winter" Value="01"></asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="_table" runat="server">
        <div class="listitem" id="classes_header">
            <div class="col4">CLASS CODE</div>
            <div class="col4">CLASS NAME</div>
            <div class="col4">START DATE</div>
            <div class="col4last">END DATE</div>
        </div>

        <div id="classes_result" runat="server"></div>
    </div>
</asp:Content>
