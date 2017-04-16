<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sach_theo_chu_de.aspx.cs" Inherits="Sach_theo_chu_de" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <table cellpadding="3" cellspacing="0" class="style1">
            <tr>
                <td style="background-color: #CC3300; color: #FFFFFF; font-weight: bolder; font-size: large; text-align: center; padding-top: 4px; padding-bottom: 4px;">
                    <asp:Label ID="lbltencd" runat="server" Font-Bold="True" Font-Size="17pt" 
                        ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color: #0099FF; color: #FFFFFF; font-weight: bold; font-size: large; text-align: left; padding-top: 4px; padding-bottom: 4px;">
                    <asp:Label ID="lbltong_so_sach" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" BackColor="#FFFFCC" 
                        DataKeyField="Masach" DataSourceID="SqlDataSource1" RepeatColumns="2" 
                        ShowFooter="False" ShowHeader="False">
                        <ItemTemplate>
                            <table cellpadding="3" cellspacing="0" class="style1">
                                <tr>
                                    <td rowspan="3" style="vertical-align: top; width: 70px; height: 80px;">
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
                                    <td style="text-align: left">
                                        <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("Tensach") %>' 
                                            NavigateUrl='<%# Eval("Masach","Chi_tiet_sach.aspx?ms={0}") %>'></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left">
                                        Đơn Giá:
                                        <asp:Label ID="Label1" runat="server" ForeColor="#009933" 
                                            Text='<%# Eval("Dongia") %>'></asp:Label>
                                        &nbsp;/
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Donvitinh") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left">
                                        <asp:HyperLink ID="HyperLink2" runat="server" 
                                            ImageUrl="~/images/nut_chonmua.gif" 
                                            NavigateUrl='<%# Eval("Masach", "~/Gio_Hang.aspx?ms={0}") %>'></asp:HyperLink>
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
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Masach], [Tensach], [Dongia], [Donvitinh], [Hinhminhhoa] FROM [SACH] WHERE ([MaCD] = @MaCD)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="MaCD" QueryStringField="mcd" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    
</asp:Content>


