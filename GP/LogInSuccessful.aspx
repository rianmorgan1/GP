<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogInSuccessful.aspx.cs" Inherits="GP.LogInSuccessful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%: Title %> You have successfully logged in! You can now head back to the home page!</h2>
        <p>

                            <asp:LoginView ID="LoginView1" runat="server">
                                <RoleGroups>
                                    <asp:RoleGroup Roles="Admin">
                                    </asp:RoleGroup>
                                </RoleGroups>
                            </asp:LoginView>

</p>

</asp:Content>
