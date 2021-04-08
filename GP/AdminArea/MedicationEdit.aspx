<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MedicationEdit.aspx.cs" Inherits="GP.AdminArea.MedicationEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        Admin Access only!
    </p>
    <p>
        Click the &quot;edit&quot; to change medication data</p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPmeDatabase %>" SelectCommand="SELECT [MEDICATIONNAME], [MEDICATIONID], [DESCRIPTION] FROM [Medication]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MEDICATIONID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="MEDICATIONID" HeaderText="MEDICATIONID" ReadOnly="True" SortExpression="MEDICATIONID" />
                <asp:BoundField DataField="MEDICATIONNAME" HeaderText="MEDICATIONNAME" SortExpression="MEDICATIONNAME" />
                <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
