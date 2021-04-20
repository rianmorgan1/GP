<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Track.aspx.cs" Inherits="GP.PatientArea.Track" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        Here Users can track their Weight and Height:</p>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 196px">Enter your Height (e.g. 200):</td>
            <td>
                <asp:TextBox ID="txtHeight" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 196px">Enter your Weight (e.g. 190):</td>
            <td>
                <asp:TextBox ID="txtWeight" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 196px">Enter the Date:</td>
            <td>
                <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 196px">Enter Patient ID:</td>
            <td>
                <asp:TextBox ID="txtPatientID" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 196px">&nbsp;</td>
            <td>
                <asp:Button ID="BtnInitiateTrack" runat="server" OnClick="BtnInitiateTrack_Click" Text="Track" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 196px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td>
                <asp:Label ID="StatusLabel" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
