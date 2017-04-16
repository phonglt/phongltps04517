<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sach_theo_NXB.aspx.cs" Inherits="Sach_theo_NXB" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="background-color: #CC3300; padding-top: 4px; padding-bottom: 4px;">
                    <asp:Label ID="lbltennxb" runat="server" Font-Bold="True" Font-Size="17pt" 
                        ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #0066FF; text-align: left; padding-top: 4px; padding-bottom: 4px;">
                    <asp:Label ID="lbltongsosach" runat="server" Font-Bold="True" Font-Size="14pt" 
                        ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                        RepeatColumns="2" BackColor="#FFFFCC" Width="100%">
                        <ItemTemplate>
                            <table cellpadding="2" class="style2">
                                <tr>
                                    <td rowspan="3" 
                                        style="text-align: center; vertical-align: top; width: 70px; height: 80px;">
                                        <asp:Image ID="Image1" runat="server" Height="100%" 
                                            ImageUrl='<%# Eval("Hinhminhhoa") %>' Width="100%" />
                                        <asp:HoverMenuExtender ID="HoverMenuExtender1" runat="server"
                                        PopupControlID="popupImage"
                                        TargetControlID="image1"
                                        OffsetX="16" OffsetY="60"
                                        PopupPosition="Right"
                                        PopDelay="50" HoverDelay="50">
                                        </asp:HoverMenuExtender>
                                        <asp:Panel runat="server" ID="popupImage" BorderColor="#628BD7" 
                                        BorderStyle="Solid" BorderWidth="5px" Height="190px" Width="160px">
                                        <asp:Image runat="server" ID="mainImage" ImageUrl='<%# Eval("hinhminhhoa") %>' 
                                        Width="160px" Height="190px" /><br />
                                        </asp:Panel>
                                    </td>
                                    <td style="text-align: left; padding-left: 5px">
                                        <asp:HyperLink ID="HyperLink1" runat="server" 
                                            NavigateUrl='<%# Eval("Masach", "Chi_tiet_sach.aspx?ms={0}") %>' 
                                            Text='<%# Eval("Tensach") %>'></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; padding-left: 5px">
                                        Đơn Giá:&nbsp;
                                        <asp:Label ID="lbldongia" runat="server" ForeColor="#009900" 
                                            Text='<%# Eval("Dongia") %>'></asp:Label>
                                        &nbsp;VNĐ /
                                        <asp:Label ID="lbldonvitinh" runat="server" Text='<%# Eval("Donvitinh") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; padding-left: 5px">
                                        <asp:HyperLink ID="HyperLink2" runat="server" 
                                            ImageUrl="~/images/nut_chonmua.gif" 
                                            NavigateUrl='<%# Eval("masach","~/Gio_Hang.aspx?ms={0}") %>'></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [Tensach], [Dongia], [Donvitinh], [Mota], [Hinhminhhoa], [MaCD], [MaNXB], [tentacgia], [Masach] FROM [SACH] WHERE ([MaNXB] = @MaNXB)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="MaNXB" QueryStringField="mnxb" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

