<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="GP.LogIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <img alt="login" src="Images/login.jpg" style="width: 781px; height: 276px" /></h2>
   <p>&nbsp;</p>
    <p>&nbsp;<strong>Here you can login</strong></p>
   <div>

       <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for a New Account " CreateUserUrl="~/Registration.aspx" DestinationPageUrl="~/LogInSuccessful.aspx" OnLoggedIn="Login1_LoggedIn" Height="189px" Width="446px" PasswordRecoveryText="Change Password?" PasswordRecoveryUrl="~/ForgotPassword.aspx">
       </asp:Login>
      
       <br />

   </div>
</asp:Content>
