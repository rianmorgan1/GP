<%@ Page Title="Medication" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewMedication.aspx.cs" Inherits="GP.PatientArea.ViewMedication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

        <strong>Here patients can view available medication<br />
    </strong>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" SelectCommand="SELECT [MEDICATIONID], [MEDICATIONNAME], [DESCRIPTION] FROM [Medication]"></asp:SqlDataSource>
    <div class="text-left">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MEDICATIONID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Horizontal" Height="173px" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" RowHeaderColumn="MEDICATIONNAME" ShowFooter="True" Width="1200px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MEDICATIONID" HeaderText="MEDICATIONID" ReadOnly="True" SortExpression="MEDICATIONID" />
                <asp:BoundField DataField="MEDICATIONNAME" HeaderText="MEDICATIONNAME" SortExpression="MEDICATIONNAME" />
                <asp:BoundField DataField="DESCRIPTION" HeaderText="DESCRIPTION" SortExpression="DESCRIPTION" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
    <br />
</asp:Content>
