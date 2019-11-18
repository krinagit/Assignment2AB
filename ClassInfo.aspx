<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassInfo.aspx.cs" Inherits="Assignment_2ab.WebForm3" %>
<asp:Content ID="ClassAttendance" ContentPlaceHolderID="MainContent" runat="server">
    <div id="classinfo" runat="server">
        <h2>CLASS INFO</h2>
        CLASS CODE: <span id="class_code" runat="server"></span><br />
        CLASS NAME: <span id="class_name" runat="server"></span><br />
        START DATE: <span id="class_start" runat="server"></span><br />
        FINISH DATE: <span id="class_end" runat="server"></span><br />
        TEACHER: <span id="teacher_name" runat="server"></span><br />
    </div>

</asp:Content>
