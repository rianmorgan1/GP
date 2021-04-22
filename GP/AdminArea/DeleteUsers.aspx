<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteUsers.aspx.cs" Inherits="GP.AdminArea.DeleteUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <br />
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Button ID="YesButton" runat="server" OnClick="YesButton_Click" Text="Yes" />
                    <asp:Button ID="CancelButton" runat="server" OnClick="CancelButton_Click" Text="Cancel" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Button" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Msg" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                      <span style="color:red">Are you sure you want to delete the userid <b><%=User.Identity.Name%></b>?</span><br />
                     Delete related profile and roles data: <asp:CheckBox id="DeleteRelatedData" 
                                                       checked="True" runat="Server" /><br />
                </td>
            </tr>
        </table>
    
</asp:Content>
