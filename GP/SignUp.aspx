<%@ Page Title="Sign Up for a new account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="GP.SignUp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%: Title %> </h2>
            <table class="nav-justified">
                <tr>
                    <td>
                        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
                            <WizardSteps>
                                <asp:CreateUserWizardStep runat="server" />
                                <asp:CompleteWizardStep runat="server" />
                            </WizardSteps>
                        </asp:CreateUserWizard>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        


</asp:Content>
