<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_CD_SACH.ascx.cs" Inherits="UserControl_UC_CD_SACH" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="MaCD" DataSourceID="SqlDataSource1" ShowHeader="False" 
    Width="100%">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <table cellpadding="4" cellspacing="0" class="style1" 
                    
                    
                    style="border-style: none; border-width: 0px; background-image: url('images/nenxanh_cottrai.gif'); font-size: large;">
                    <tr>
                        <td style="width: 8px">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/icon_list.jpg" />
                        </td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Tenchude") %>' 
                                Font-Bold="True" Font-Size="14pt" ForeColor="White" 
                                NavigateUrl='<%# Eval("MaCD", "~/Sach_theo_chu_de.aspx?mcd={0}") %>'></asp:HyperLink>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [Tenchude], [MaCD] FROM [CHUDE] ORDER BY [MaCD] DESC">
</asp:SqlDataSource>

