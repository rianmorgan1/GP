<%@ Page Title="Here you can Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="GP.LogIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%: Title %> 
    <h1>Please log in to GPme</h1>
   <div>

       <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for a New Account " CreateUserUrl="~/Registration.aspx" DestinationPageUrl="~/LogInSuccessful.aspx" OnLoggedIn="Login1_LoggedIn" Height="189px" Width="446px">
       </asp:Login>
      
       <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" Height="182px" OnSendingMail="PasswordRecovery1_SendingMail" SuccessText="Your password has been sent to your email address" Width="444px">
       </asp:PasswordRecovery>
      
       <br />

   </div>
</asp:Content>
