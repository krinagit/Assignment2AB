﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteTeacher.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="deleteteacher" ContentPlaceHolderID="MainContent" runat="server">
    <h1>DELETE TEACHER</h1>
     <div class="operations">
    <div class="space">
        <label>Insert teacher ID: </label>
        <asp:TextBox runat="server" ID="delete_teacherid" ></asp:TextBox>
    </div>
    <div class="space">
        <asp:Button runat="server" text="Delete" PostBackUrl="~/teachers.aspx"  />
    </div>
    </div>
</asp:Content>
