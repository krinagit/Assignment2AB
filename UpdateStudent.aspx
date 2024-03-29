﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="Assignment_2ab.WebForm4" %>
<asp:Content ID="updatestudent" ContentPlaceHolderID="MainContent" runat="server">
    <h1>UPDATE STUDENT DETAILS</h1>
    <div class="operations">
        <div class="space">
            <label>Insert student ID: </label>
            <asp:TextBox runat="server" ID="update_sclassid" ></asp:TextBox>
        </div>
        <div class="space">
        <label>Column to update: </label>
            <asp:DropDownList runat="server" ID="update_scolumn">
                <asp:ListItem Text="Student First Name" Value="studentfname"></asp:ListItem>
                <asp:ListItem Text="Student Last Name" Value="studentlname"></asp:ListItem>
                <asp:ListItem Text="Student Number" Value="studentnumber"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="space">
            <label>New value: </label>
            <asp:TextBox runat="server" ID="insert_supdate" ></asp:TextBox>
        </div>
        <div class="space">
            <asp:Button runat="server" text="Update" PostBackUrl="~/students.aspx"  />
        </div>
    </div>
</asp:Content>
