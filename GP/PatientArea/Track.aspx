<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Track.aspx.cs" Inherits="GP.PatientArea.Track" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        Here Users can track their Weight and Height:</p>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 213px">Enter your Height (e.g. 200cm):</td>
            <td>
                <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtHeight" ErrorMessage="Please Enter Your Current Height in Centimeters " ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtHeight" ErrorMessage="Please Enter an Appropriate Height from 0-300" ForeColor="Red" MaximumValue="300" MinimumValue="0">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 213px">Enter your Weight (e.g. 200lbs):</td>
            <td>
                <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtWeight" ErrorMessage="Please Enter Your Current Height in Centimeters " ForeColor="Red">*</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtWeight" ErrorMessage="Please Enter an Appropriate Weight from 0-400" ForeColor="Red" MaximumValue="400" MinimumValue="0">*</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 213px; height: 25px;">Enter the Date:</td>
            <td style="height: 25px">
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDate" ErrorMessage="Please Enter an the Current Date" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 213px">Enter Patient ID:</td>
            <td>
                <asp:TextBox ID="txtPatientID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPatientID" ErrorMessage="Please Enter Your ID" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 213px">&nbsp;</td>
            <td>
                <asp:Button ID="BtnInitiateTrack" runat="server" OnClick="BtnInitiateTrack_Click" Text="Track" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 213px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Width="345px" />
            </td>
            <td>
                <asp:Label ID="StatusLabel" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
