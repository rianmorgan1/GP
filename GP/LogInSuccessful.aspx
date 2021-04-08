<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogInSuccessful.aspx.cs" Inherits="GP.LogInSuccessful" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%: Title %> You have successfully logged in! You can now head back to the home page.</h2>
        <p>

                            &nbsp;<asp:LoginView ID="LoginView1" runat="server" >
                        <RoleGroups>
                            <asp:RoleGroup Roles="Admin">
                                <ContentTemplate>
                                    <asp:HyperLink ID="Hyperlink1" runat="server" NavigateUrl="~/AdminArea/Admins.aspx">Admin Hub</asp:HyperLink>
                                </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>
          

                    <asp:LoginView ID="LoginView2" runat="server">
                        <RoleGroups>
                            <asp:RoleGroup Roles="Doctor">
                               <ContentTemplate>
                                    <asp:HyperLink ID="Hyperlink2" runat="server" NavigateUrl="~/DoctorArea/Doctors.aspx">Doctor Hub</asp:HyperLink>
                               </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>


                    <asp:LoginView ID="LoginView3" runat="server" >
                        <RoleGroups>
                            <asp:RoleGroup Roles="Patient">
                                <ContentTemplate>
                                    <asp:HyperLink ID="Hyperlink3" runat="server" NavigateUrl="~/PatientArea/Patients.aspx">Patient Hub</asp:HyperLink>
                                </ContentTemplate>
                            </asp:RoleGroup>
                        </RoleGroups>
                    </asp:LoginView>

</p>

</asp:Content>
