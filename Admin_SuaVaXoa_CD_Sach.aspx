<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_SuaVaXoa_CD_Sach.aspx.cs" Inherits="Admin_SuaVaXoa_CD_Sach" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
            ForeColor="#FF9900" Text="SỬA VÀ XÓA CHỦ ĐỀ SÁCH"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="MaCD" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" onrowcommand="GridView1_RowCommand">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="MaCD" HeaderText="Mã Chủ Đề" InsertVisible="False" 
                    ReadOnly="True" SortExpression="MaCD" />
                <asp:BoundField DataField="Tenchude" HeaderText="Tên Chủ Đề" 
                    SortExpression="Tenchude" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Chọn Chủ Đề" CommandName = "select" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Xóa Chủ Đề" CommandName = "del" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [CHUDE]"></asp:SqlDataSource>
        
        <br />
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Mã Chủ Đề"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtmacd" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                        Text="Tên Chủ Đề Hiện Tại"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px;">
                    <asp:TextBox ID="txttencdht" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" 
                        Text="Nhập Tên Chủ Đề Mới"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txttencdmoi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txttencdmoi" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Button ID="btncapnhat" runat="server" onclick="btncapnhat_Click" 
                        Text="Cập Nhật" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

