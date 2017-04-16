<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Lich_Sua_Hang_KH.aspx.cs" Inherits="Lich_Sua_Hang_KH" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="padding-top: 5px; padding-bottom: 5px">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="14pt" 
                        ForeColor="#0066FF" Text="TRANG LỊCH SỬ MUA HÀNG"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                        GridLines="None">
                        <RowStyle BackColor="#E3EAEB" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                    <br />
                    <asp:Label ID="lblthongbao" runat="server" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="#FF9900" Text="Bạn Chưa Mua Sách Tại Trang Web của Chúng Tôi!" 
                        Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/QC04.gif" 
                        Width="100%" />
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

