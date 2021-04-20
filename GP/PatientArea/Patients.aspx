<%@ Page Title="Patient Area" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Patients.aspx.cs" Inherits="GP.PatientArea.Patients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    
    <h1>For Patients only</h1>
<p>Below are links to multiple pages, click on a button to select which page you want to travel to.</p>
<table class="nav-justified">
    <tr>
        <td class="modal-sm" style="width: 379px">Click here to Track Weight and Height:</td>
        <td>
            <asp:Button ID="BtnTrack" runat="server" Text="Click" OnClick="BtnTrack_Click" />
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 379px; height: 26px;">Click here to Create or Edit your Appointments:</td>
        <td style="height: 26px">
            <asp:Button ID="BtnAppointments" runat="server" Text="Click" OnClick="BtnAppointments_Click" />
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 379px">Click here to View your Profile and Medication:</td>
        <td>
            <asp:Button ID="BtnMedicationProfile" runat="server" OnClick="BtnMedicationProfile_Click" Text="Click" />
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 379px; height: 26px;">Click here to View Medication and Appointment Reminders:</td>
        <td style="height: 26px">
            <asp:Button ID="BtnReminders" runat="server" OnClick="BtnReminders_Click" Text="Click" />
        </td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 379px">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
</asp:Content>
