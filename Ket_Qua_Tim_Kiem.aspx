<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ket_Qua_Tim_Kiem.aspx.cs" Inherits="Ket_Qua_Tim_Kiem" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#CC6600" 
            Text="KẾT QUẢ TÌM KIẾM"></asp:Label>
        <br />
        <asp:Label ID="lbltukhoa" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="13pt" ForeColor="#3399FF"></asp:Label>
        <br />
        <asp:Label ID="lblsosach" runat="server" Font-Bold="True" Font-Size="13pt" 
            ForeColor="#339933"></asp:Label>
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="#FFFFCC" 
            DataSourceID="SqlDataSource1" RepeatColumns="2" Width="100%">
            <ItemTemplate>
                <table cellpadding="3" cellspacing="0" class="style2">
                    <tr>
                        <td rowspan="3" 
                            style="vertical-align: top; text-align: center; width: 70px; height: 80px">
                            <asp:Image ID="Image1" runat="server" Height="100%" Width="100%" 
                                ImageUrl='<%# Eval("Hinhminhhoa") %>' />
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
                        <td 
            style="text-align: left; vertical-align: text-top; padding-left: 5px">
                            <asp:HyperLink ID="hpl_tensach" runat="server" 
                                NavigateUrl='<%# Eval("masach","~/Chi_tiet_sach.aspx?ms={0}") %>' 
                                Text='<%# Eval("Tensach") %>'></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td 
            style="text-align: left; vertical-align: text-top; padding-left: 5px">
                            Đơn giá:
                            <asp:Label ID="lbldongia" runat="server" Font-Bold="True" ForeColor="#009933" 
                                Text='<%# Eval("Dongia") %>'></asp:Label>
                            &nbsp;VNĐ /
                            <asp:Label ID="lbldonvitinh" runat="server" Text='<%# Eval("Donvitinh") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr style="vertical-align: top; text-align: center">
                        <td 
            style="text-align: left; vertical-align: text-top; padding-left: 5px">
                            <asp:HyperLink ID="hpl_chonmua" runat="server" 
                                ImageUrl="~/images/nut_chonmua.gif" 
                                Text='<%# Eval("Masach") %>' 
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
            </ItemTemplate>
        </asp:DataList>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Masach], [Tensach], [Dongia], [Donvitinh], [Hinhminhhoa] FROM [SACH] WHERE ([Tensach] LIKE '%' + @Tensach + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="Tensach" SessionField="timkiem" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </center>
</asp:Content>

