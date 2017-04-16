<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_SuaVaXoaKhachHang.aspx.cs" Inherits="Admin_SuaVaXoaKhachHang" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#6699FF" 
            Text="SỬA VÀ XÓA TÀI KHỎAN"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Width="100%" AllowPaging="True" 
            onrowcommand="GridView1_RowCommand" PageSize="8">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="MaKH" HeaderText="Mã Khách Hàng" 
                    InsertVisible="False" ReadOnly="True" SortExpression="MaKH" />
                <asp:BoundField DataField="HotenKH" HeaderText="Họ và Tên" 
                    SortExpression="HotenKH" />
                <asp:BoundField DataField="TenDN" HeaderText="Tên Tài Khỏan" 
                    SortExpression="TenDN" />
                <asp:BoundField DataField="Quyen" HeaderText="Quyền Đăng Nhập" 
                    SortExpression="Quyen" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Chọn TK" CommandName="select" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Xóa TK" CommandName = "del" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [MaKH], [HotenKH], [TenDN], [Quyen] FROM [KHACHHANG]">
        </asp:SqlDataSource>
        
        <br />
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label13" runat="server" Font-Bold="True" Text="Mã Tài Khỏan"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtmakh" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Họ và Tên"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txthoten" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txthoten" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Ngày Sinh"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtngaysinh" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtngaysinh_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtngaysinh">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtngaysinh" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Giới Tính"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtgioitinh" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtgioitinh" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Địa Chỉ"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtdiachi" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Điện Thọai"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtsdt" Display="Dynamic" ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Email"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Sai Đinh Dạng Email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Tên Đăng Nhập"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txttendn" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txttendn" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Mật Khẩu"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtmatkhau" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtmatkhau" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" 
                        Text="Chọn Quyền Tài Khỏan Mới"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:DropDownList ID="ddlquyenmoi" runat="server">
                        <asp:ListItem Value="1"></asp:ListItem>
                        <asp:ListItem Value="2"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Button ID="btnsuadoi" runat="server" onclick="btnsuadoi_Click" 
                        Text="Sửa Đổi" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

