<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_NXB.ascx.cs" Inherits="UserControl_UC_NXB" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="MaNXB" DataSourceID="SqlDataSource1" Width="100%" ShowHeader="False">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <table cellpadding="4" cellspacing="0" class="style1" 
                    style="background-image: url('images/nenxanh_cottrai.gif')">
                    <tr>
                        <td style="width: 6px">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/icon_list.jpg" />
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="14pt" 
                                ForeColor="White" Text='<%# Eval("TenNXB") %>' Font-Bold="True" 
                                NavigateUrl='<%# Eval("MaNXB", "~/Sach_theo_NXB.aspx?mnxb={0}") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [TenNXB], [MaNXB] FROM [NHAXUATBAN] ORDER BY [MaNXB] DESC">
</asp:SqlDataSource>
