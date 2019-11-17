<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="classlist.aspx.cs" Inherits="Assignment_2ab.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>CLASSES</h1>
    <div id="classes_nav">
        
        <asp:label for="classes_search" runat="server">SEARCH:</asp:label>
        <asp:TextBox ID="classes_search" runat="server"></asp:TextBox>
        <asp:Button runat="server" text="submit" />
        <asp:label for="semester" runat="server">Choose a semester:</asp:label>
        <asp:DropDownList runat="server" id="semester">
            <asp:ListItem Text="All" Value="all"></asp:ListItem>
            <asp:ListItem Text="Fall 2019" Value="fall2019"></asp:ListItem>
            <asp:ListItem Text="Winter 2020" Value="winter2020"></asp:ListItem>
            <asp:ListItem Text="Fall 2020" Value="fall2020"></asp:ListItem>
        </asp:DropDownList>

        <div id="sql_debugger" runat="server"></div>
    </div>

    <div class="_table" runat="server">
        <div class="listitem">
            <div class="col4">CLASS CODE</div>
            <div class="col4">CLASS NAME</div>
            <div class="col4">START DATE</div>
            <div class="col4last">END DATE</div>
        </div>

        <div id="classes_result" runat="server"></div>
    </div>
</asp:Content>
