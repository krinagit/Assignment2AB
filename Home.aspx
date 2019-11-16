<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Assignment_2ab.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Welcome to Humber's school administration!</h1>
    <p>What do you want to manage?</p>

        <div>
            <asp:Button runat="server" Text="Students" class ="students" PostBackUrl="~/students.aspx" />
        </div>
        <div>
            <asp:Button runat="server" Text="Teachers"  class="teachers" PostBackUrl="~/teachers.aspx" />
        </div>
        <div>
            <asp:Button runat="server" Text="Classes" class="classes" PostBackUrl="~/classlist.aspx" />
        </div>
   
</asp:Content>
