<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateAppointmentPatient.aspx.cs" Inherits="GP.PatientArea.CreateAppointmentPatient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <strong>Here you can book appointments:</strong></p>
    <p>
        Please just enter correct ID information and which date and time you would prefer:&nbsp;</p>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 200px; height: 22px;">
                <asp:Label ID="lblID" runat="server" Text="Enter your ID (Username):"></asp:Label>
            </td>
            <td style="width: 133px; height: 22px">
                <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="Please Enter Your Patient ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="Please Enter an ID between 1-5000" ForeColor="Red" MaximumValue="5000" MinimumValue="1">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 200px; height: 22px;">
                <asp:Label ID="lblDoctorID" runat="server" Text="Enter your Doctors ID:"></asp:Label>
            </td>
            <td style="height: 22px; width: 133px">
                <asp:TextBox ID="txtDoctorID" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDoctorID" ErrorMessage="Please Enter Your Doctor ID" ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtDoctorID" ErrorMessage="Please Enter an ID between 1-5000" ForeColor="Red" MaximumValue="5000" MinimumValue="1">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 200px; height: 22px;">
                <asp:Label ID="lblDate" runat="server" Text="Enter a suitable Date:"></asp:Label>
            </td>
            <td style="width: 133px; height: 22px">
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td style="height: 22px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDate" ErrorMessage="Please enter a suitable Date" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 200px; height: 20px;">
                <asp:Label ID="lblTime" runat="server" Text="Enter a suitable Time:"></asp:Label>
            </td>
            <td style="height: 20px; width: 133px">
                <asp:TextBox ID="txtTime" runat="server" TextMode="Time"></asp:TextBox>
            </td>
            <td style="height: 20px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTime" ErrorMessage="Please enter a suitable Time" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 200px; height: 20px;">
                &nbsp;</td>
            <td style="height: 20px; width: 133px"></td>
            <td style="height: 20px">&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 200px">
                <asp:Button ID="BtnBook" runat="server" OnClick="BtnBook_Click" Text="Book" />
            </td>
            <td style="width: 133px">
                <asp:Label ID="lblStatus" runat="server" ForeColor="Green"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 200px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="279px" />
            </td>
            <td style="width: 133px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>
