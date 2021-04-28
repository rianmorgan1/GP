<%@ Page Title="Doctor Area" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Doctors.aspx.cs" Inherits="GP.DoctorArea.Doctors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h2><%: Title %>
            <img alt="doc" src="../Images/23420-200.png" style="width: 214px; height: 223px" /></h2>

    
    <h1>For Doctors and Admins only</h1>
<p>Below are links to multiple pages, click on a button to select which page you want to travel to.</p>
        <table class="nav-justified">
            <tr>
                <td class="modal-lg" style="width: 374px">Here you can Create and Edit appointments:</td>
                <td>
                    <asp:Button ID="BtnDoctorAppointments" runat="server" OnClick="BtnDoctorAppointments_Click" Text="Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 374px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 374px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="modal-lg" style="width: 374px">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

</asp:Content>
