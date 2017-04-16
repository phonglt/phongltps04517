<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_SACHMOI.ascx.cs" Inherits="UserControl_UC_SACHMOI" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<asp:DataList ID="DataList1" runat="server" BackColor="#FFFFCC" 
    DataKeyField="Masach" RepeatColumns="2" 
    Width="100%">
    <ItemTemplate>
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td rowspan="3" 
                    style="vertical-align: top; text-align: center; width: 80px; height: 70px;">
                    <asp:Image ID="Image1" runat="server" Height="70px" 
                        ImageUrl='<%# Eval("Hinhminhhoa") %>' Width="80px" />
                    <asp:HoverMenuExtender ID="HoverMenuExtender1" runat="server"
                    PopupControlID="popupImage"
                    TargetControlID="image1"
                    OffsetX="16" OffsetY="55"
                    PopupPosition="Right"
                    PopDelay="50" HoverDelay="50">
                    </asp:HoverMenuExtender>
                    <asp:Panel runat="server" ID="popupImage" BorderColor="#628BD7" 
                        BorderStyle="Solid" BorderWidth="5px" Height="190px" Width="160px">
                    <asp:Image runat="server" ID="mainImage" ImageUrl='<%# Eval("hinhminhhoa") %>' 
                            Width="160px" Height="190px" /><br />
                </asp:Panel>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl='<%# Eval("masach","~/Chi_tiet_sach.aspx?ms={0}") %>' 
                        Text='<%# Eval("Tensach") %>'></asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td>
                    Đơn giá:
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#009933" 
                        Text='<%# Eval("Dongia")%>'></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="VNĐ/"></asp:Label>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Donvitinh") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        ImageUrl="~/images/nut_chonmua.gif" 
                        NavigateUrl='<%# Eval("masach","~/Gio_Hang.aspx?ms={0}") %>'></asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    
    SelectCommand="SELECT [Masach], [Tensach], [Donvitinh], [Hinhminhhoa], [Dongia] FROM [SACH]">
</asp:SqlDataSource>






