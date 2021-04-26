<%@ Page Title="Medication" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewMedication.aspx.cs" Inherits="GP.PatientArea.ViewMedication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

        <strong>Here patients can view available medication list<br />
    </strong>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" SelectCommand="SELECT [MEDICATIONID], [MEDICATIONNAME], [DESCRIPTION] FROM [Medication]"></asp:SqlDataSource>
    <div class="text-left">
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MEDICATIONID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="Horizontal" Height="173px" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" RowHeaderColumn="MEDICATIONNAME" ShowFooter="True" Width="1305px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="MEDICATIONID" HeaderText="MEDICATION ID" ReadOnly="True" SortExpression="MEDICATIONID" >
                <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="MEDICATIONNAME" HeaderText="MEDICATION NAME" SortExpression="MEDICATIONNAME" />
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
    <strong>
    <br />
    <br />
    Here users can Change their profile image:<br />
    </strong>
    <table class="nav-justified">
        <tr>
            <td class="modal-sm" style="width: 74px">&nbsp;</td>
            <td style="width: 415px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 74px">File Upload</td>
            <td style="width: 415px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Image ID="Image1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 74px">&nbsp;</td>
            <td style="width: 415px">
                <asp:Button ID="BtnUpload" runat="server" OnClick="BtnUpload_Click" Text="Upload" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblStatus" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
