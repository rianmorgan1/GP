<%@ Page Title="Here you can Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="GP.LogIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <h2 style="height: 282px"><%: Title %>
         <table class="nav-justified">
             <tr>
                 <td>
                     <asp:LoginStatus ID="LoginStatus1" runat="server" />
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
     </h2>
</asp:Content>
