<%@ Page Title="Specific" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment_2ab.Home" %>

<asp:Content ID="home" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome to Humber's school administration!</h1>
    <p>What do you want to manage?</p>

        <div>
            <asp:Button runat="server" Text="Students" class ="students"  />
        </div>
        <div>
            <asp:Button runat="server" Text="Teachers"  class="teachers" />
        </div>
        <div>
            <asp:Button runat="server" Text="Classes" class="classes" />
        </div>
    
</asp:Content>
