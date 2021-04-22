<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteUsers.aspx.cs" Inherits="GP.AdminArea.DeleteUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <br />
        <table class="nav-justified">
            <tr>
                <td class="modal-sm" style="width: 316px">
                      <span style="color:red">Are you sure you want to delete user <b><%=User.Identity.Name%></b>?</span></td>
                <td class="modal-sm" style="width: 218px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 316px">
                     Delete related profile and roles data:</td>
                <td class="modal-sm" style="width: 218px">
                    <asp:CheckBox id="DeleteRelatedData" 
                                                       checked="True" runat="Server" />
                    <asp:Button ID="CancelButton" runat="server" OnClick="CancelButton_Click" Text="Cancel" />
                    <asp:Button ID="YesButton" runat="server" OnClick="YesButton_Click" Text="Yes" />
                </td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 316px">
                    WARNING: THIS WILL DELETE ALL USER DATA</td>
                <td class="modal-sm" style="width: 218px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="modal-sm" style="width: 316px">
                    <asp:Label ID="LblMessage" runat="server"></asp:Label>
                </td>
                <td class="modal-sm" style="width: 218px">
                      <br />
                     &nbsp;<br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>
