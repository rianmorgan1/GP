<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="GP.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <table class="nav-justified">
        <tr>
            <td>
                <table class="nav-justified">
                    <tr>
                        <td>
                            <asp:Label ID="lblPatientID" runat="server" Text="Enter Patient ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPatientId" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 22px">
                            <asp:Label ID="lblPassword" runat="server" Text="Enter Password:"></asp:Label>
                        </td>
                        <td style="height: 22px">
                            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblFirstName" runat="server" Text="Enter First Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="Enter Last Name:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSecondName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSex" runat="server" Text="Sex:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSex" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTelephone" runat="server" Text="Telephone:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTelephone" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblDOB" runat="server" Text="DOB:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblMedicationID" runat="server" Text="Enter Medication ID:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnRegister" runat="server" OnClick="Button1_Click" Text="Register" />
                <asp:Label ID="StatusLabel" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>



</asp:Content>
