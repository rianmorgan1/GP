<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="GP.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <br />
    <table class="nav-justified">
        <tr>
            <td style="width: 709px">




                <table class="nav-justified" style="width: 98%">
                    <tr>
                        <td class="modal-sm" style="width: 287px; height: 22px">
                            <asp:Label ID="lblPatientID" runat="server" Text="Enter Patient ID: (username)"></asp:Label>
                        </td>
                        <td class="modal-sm" style="width: 137px; height: 22px">
                            <asp:TextBox ID="txtPatientID" runat="server"></asp:TextBox>
                        </td>
                        <td style="height: 22px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPatientID" ErrorMessage="Please Enter Your Patient ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPatientID" ErrorMessage="Please Enter an ID between 1-5000" ForeColor="Red" MaximumValue="5000" MinimumValue="1" Type="Integer">*</asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 22px; width: 287px;">
                            <asp:Label ID="lblPassword" runat="server" Text="Enter Password:"></asp:Label>
                        </td>
                        <td style="height: 22px; width: 137px;">
                            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        </td>
                        <td style="height: 22px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Please Enter Your Password" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 22px; width: 287px;">
                            Re-enter Password:</td>
                        <td style="height: 22px; width: 137px;">
                            <asp:TextBox ID="txtSecondPassword" runat="server"></asp:TextBox>
                        </td>
                        <td style="height: 22px">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtSecondPassword" ErrorMessage="Passwords do not match" ForeColor="Red">*</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 22px; width: 287px;">
                            <asp:Label ID="lblFirstName" runat="server" Text="Enter First Name:"></asp:Label>
                        </td>
                        <td style="height: 22px; width: 137px;">
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        </td>
                        <td style="height: 22px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please Enter Your First Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 22px; width: 287px;">
                            <asp:Label ID="lblLastName" runat="server" Text="Enter Second Name:"></asp:Label>
                        </td>
                        <td style="height: 22px; width: 137px;">
                            <asp:TextBox ID="txtSecondName" runat="server"></asp:TextBox>
                        </td>
                        <td style="height: 22px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtSecondName" ErrorMessage="Please Enter Your Second Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 22px; width: 287px;">
                            <asp:Label ID="lblSex" runat="server" Text="Sex:"></asp:Label>
                        </td>
                        <td style="height: 22px; width: 137px;">
                            <asp:TextBox ID="txtSex" runat="server"></asp:TextBox>
                        </td>
                        <td style="height: 22px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtSex" ErrorMessage="Please Enter Your Sex" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 287px; height: 22px">
                            <asp:Label ID="lblEmail" runat="server" Text="Email Address:"></asp:Label>
                        </td>
                        <td class="modal-sm" style="width: 137px; height: 22px">
                            <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
                        </td>
                        <td style="height: 22px">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Please Enter Your Email Address" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailAddress" ErrorMessage="Enter a Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 287px">
                            <asp:Label ID="lblDOB" runat="server" Text="DOB:"></asp:Label>
                        </td>
                        <td class="modal-sm" style="width: 137px">
                            <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtDOB" ErrorMessage="Please Enter Your DOB" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 709px">
                <br />
                <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
                <asp:Label ID="StatusLabel" runat="server"></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>



</asp:Content>
