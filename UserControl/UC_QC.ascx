<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_QC.ascx.cs" Inherits="UserControl_UC_QC" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BorderStyle="None" BorderWidth="0px" DataKeyNames="STT" ShowHeader="False" 
    Width="100%">
    <Columns>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    ImageUrl='<%# Eval("HinhMinhHoa") %>' NavigateUrl='<%# Eval("HREF") %>' 
                    Width="170px" Height="100%">HyperLink</asp:HyperLink>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [STT], [TenCTy], [HinhMinhHoa], [HREF], [Ngaybatdau], [Ngayhethan] FROM [QUANGCAO] ORDER BY [STT] DESC">
</asp:SqlDataSource>
