<%@ Page Title="Sign Up for a new account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="GP.SignUp1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <%: Title %>
    <h1>Sign Up for a New Account</h1>
<div>

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>

</div>

</asp:Content>
