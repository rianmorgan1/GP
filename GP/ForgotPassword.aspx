<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="GP.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
    </p>
    <p>
        <strong>H</strong><span style="font-weight: bold">ere you can change your password</span></p>
    <p>
        <asp:ChangePassword ID="ChangePassword2" runat="server" ContinueDestinationPageUrl="~/Default.aspx" DisplayUserName="True" MembershipProvider="DefaultMembershipProvider">
            <MailDefinition BodyFileName="~/EmailTemplates/PasswordRecovery.txt" CC="morgan-r18@ulster.ac.uk" From="noreply@gpme.co.uk" Subject="Password reset">
            </MailDefinition>
        </asp:ChangePassword>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
