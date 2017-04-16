<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_SuaVaXoa_NXB.aspx.cs" Inherits="Admin_SuaVaXoa_NXB" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
            ForeColor="#FF9900" Text="SỬA VÀ XÓA NHÀ XUẤT BẢN"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="MaNXB" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" onrowcommand="GridView1_RowCommand">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="MaNXB" HeaderText="Mã Nhà Xuất Bản" 
                    InsertVisible="False" ReadOnly="True" SortExpression="MaNXB" />
                <asp:BoundField DataField="TenNXB" HeaderText="Tên Nhà Xuât Bản" 
                    SortExpression="TenNXB" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Sửa NXB" CommandName = "select" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Xóa NXB" CommandName = "del" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [NHAXUATBAN]"></asp:SqlDataSource>
        
        <br />
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Mã Nhà Xuất Bản"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtmanxb" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                        Text="Tên Nhà Xuất Bản Hiện Tại"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txttenhientai" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                        Text="Nhập Tên Nhà Xuất Bản Mới"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-bottom: 5px;">
                    <asp:TextBox ID="txttenmoi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txttenmoi" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnhoantat" runat="server" onclick="btnhoantat_Click" 
                        Text="Hòan Tất" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

