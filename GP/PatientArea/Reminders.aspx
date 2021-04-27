<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reminders.aspx.cs" Inherits="GP.PatientArea.Reminders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <strong>
        <br />
        Here Patients can view their Medication Reminders</strong></p>
    <table class="nav-justified">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PATIENTID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="222px" Width="982px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MEDICATIONREMINDERID" HeaderText="MEDICATION REMINDER ID" SortExpression="MEDICATIONREMINDERID">
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MEDICATIONID" HeaderText="MEDICATION ID" SortExpression="MEDICATIONID">
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="PATIENTID" HeaderText="PATIENT ID" ReadOnly="True" SortExpression="PATIENTID">
                        <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TIMEOFDOSAGE" HeaderText="TIME OF DOSAGE" SortExpression="TIMEOFDOSAGE" />
                        <asp:BoundField DataField="DATEOFDOSAGE" HeaderText="DATE OF DOSAGE" SortExpression="DATEOFDOSAGE" />
                        <asp:BoundField DataField="QUANTITY" HeaderText="QUANTITY" SortExpression="QUANTITY" />
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
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database %>" DeleteCommand="DELETE FROM [MedicationReminder] WHERE [MEDICATIONREMINDERID] = @MEDICATIONREMINDERID" InsertCommand="INSERT INTO [MedicationReminder] ([MEDICATIONREMINDERID], [MEDICATIONID], [PATIENTID], [TIMEOFDOSAGE], [DATEOFDOSAGE], [QUANTITY]) VALUES (@MEDICATIONREMINDERID, @MEDICATIONID, @PATIENTID, @TIMEOFDOSAGE, @DATEOFDOSAGE, @QUANTITY)" SelectCommand="SELECT [MEDICATIONREMINDERID], [MEDICATIONID], [PATIENTID], [TIMEOFDOSAGE], [DATEOFDOSAGE], [QUANTITY] FROM [MedicationReminder]" UpdateCommand="UPDATE [MedicationReminder] SET [MEDICATIONID] = @MEDICATIONID, [PATIENTID] = @PATIENTID, [TIMEOFDOSAGE] = @TIMEOFDOSAGE, [DATEOFDOSAGE] = @DATEOFDOSAGE, [QUANTITY] = @QUANTITY WHERE [MEDICATIONREMINDERID] = @MEDICATIONREMINDERID">
                    <DeleteParameters>
                        <asp:Parameter Name="MEDICATIONREMINDERID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MEDICATIONREMINDERID" Type="Int32" />
                        <asp:Parameter Name="MEDICATIONID" Type="Int32" />
                        <asp:Parameter Name="PATIENTID" Type="Int32" />
                        <asp:Parameter DbType="Time" Name="TIMEOFDOSAGE" />
                        <asp:Parameter DbType="Date" Name="DATEOFDOSAGE" />
                        <asp:Parameter Name="QUANTITY" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MEDICATIONID" Type="Int32" />
                        <asp:Parameter Name="PATIENTID" Type="Int32" />
                        <asp:Parameter DbType="Time" Name="TIMEOFDOSAGE" />
                        <asp:Parameter DbType="Date" Name="DATEOFDOSAGE" />
                        <asp:Parameter Name="QUANTITY" Type="String" />
                        <asp:Parameter Name="MEDICATIONREMINDERID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <table class="nav-justified">
                    <tr>
                        <td class="modal-sm" style="width: 291px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 291px">
                            <asp:Label ID="lblTime" runat="server" Font-Size="Larger" Text="Time"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Time"></asp:TextBox>
                            <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Large">
                                <asp:ListItem>AM</asp:ListItem>
                                <asp:ListItem>PM</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 291px">
                            <asp:Label ID="Label3" runat="server" Text="Message:"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 291px">
                            <asp:TextBox ID="TextBox2" runat="server" Height="155px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 291px">
                            <asp:Button ID="Button1" runat="server" Text="Start" />
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" EnableTheming="True" Text="Button" Width="20px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="modal-sm" style="width: 291px">
                            <asp:Button ID="Button2" runat="server" Text="Stop" />
                        </td>
                        <td>
                            <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick">
                            </asp:Timer>
                            <asp:Timer ID="Timer2" runat="server" Enabled="False">
                            </asp:Timer>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
