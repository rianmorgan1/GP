<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medication.aspx.cs" Inherits="GP.Medication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <strong>Here you can find a list of our available medication. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
    </p>
    <p>
        <strong>&nbsp;</strong><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GPmeDatabase %>" SelectCommand="SELECT [MEDICATIONNAME], [DESCRIPTION] FROM [Medication]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="581px" Width="1468px">
            <Columns>
                <asp:BoundField DataField="MEDICATIONNAME" HeaderText="MEDICATION NAME" SortExpression="MEDICATIONNAME">
                <ControlStyle BorderStyle="Groove" />
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>
