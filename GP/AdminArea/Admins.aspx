<%@ Page Title="Admin Area" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="GP.AdminArea.Admins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%: Title %></h2>

    <h1>For Admins only</h1>
&nbsp;<p>Warning: This page is for admin access only!</p>
        <p>Below are links to multiple pages, click on a button to select which page you want to travel to.</p>
        <table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 249px">Here you can Add Users to Roles:</td>
                <td>
                    <asp:Button ID="BtnAddUsers" runat="server" OnClick="BtnAddUsers_Click" Text="Click" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 249px">Here you can Delete Users:</td>
                <td>
                    <asp:Button ID="BtnDeleteUsers" runat="server" OnClick="BtnDeleteUsers_Click" Text="Click" />
                </td>
            </tr>
        </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</asp:Content>
