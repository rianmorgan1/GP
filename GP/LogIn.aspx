<%@ Page Title="Here you can Log In" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="GP.LogIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%: Title %> 
    <h1>Please Log in to GPme</h1>
   <div>

       <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for a New Account " CreateUserUrl="~/SignUp.aspx" DestinationPageUrl="~/LogInSuccessful.aspx" OnLoggedIn="Login1_LoggedIn">
       </asp:Login>
      
       <br />

   </div>
</asp:Content>
