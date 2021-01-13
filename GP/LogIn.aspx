<%@ Page Title="Here you can Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="GP.LogIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %> Please Log in to GPme</h2>
    <table class="nav-justified">
        <tr>
            <td>
                <asp:LoginStatus ID="LoginStatus1" runat="server" />
                <asp:Login ID="Login3" runat="server" CreateUserText="Sign up for a New Account " CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/LogInSuccessful.aspx" >
                </asp:Login>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
