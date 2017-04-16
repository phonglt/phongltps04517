<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_SuaVaXoaSach.aspx.cs" Inherits="Admin_SuaVaXoaSach" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        <asp:Label ID="Label1" runat="server" Text="SỬA VÀ XÓA SÁCH" Font-Bold="True" 
            Font-Size="14pt" ForeColor="#3366FF"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
            GridLines="None" onrowcommand="GridView1_RowCommand" 
            AutoGenerateColumns="False" DataKeyNames="Masach" 
            DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="7">
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="masach" HeaderText="Mã Sách" />
                <asp:BoundField DataField="Tensach" HeaderText="Tên Sách" 
                    SortExpression="Tensach" />
                <asp:BoundField DataField="Dongia" HeaderText="Đơn Giá" 
                    SortExpression="Dongia" />
                <asp:BoundField DataField="tentacgia" HeaderText="Tên Tác Giả" 
                    SortExpression="tentacgia" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Sửa Tin" CommandName="select" />
                <asp:ButtonField HeaderText="Tác Vụ" Text="Xóa Tin" CommandName="del" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Tensach], [Dongia], [tentacgia], [Masach] FROM [SACH]">
        </asp:SqlDataSource>
        <br />
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label17" runat="server" Text="Mã Sách"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtmasach" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label3" runat="server" Text="Tên Sách"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txttensach" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txttensach" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label4" runat="server" Text="Đơn Giá"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtdongia" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtdongia" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label5" runat="server" Text="Đơn Vị Tính"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtdonvitinh" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtdonvitinh" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right; padding-right: 8px;">
                    <asp:Label ID="Label14" runat="server" Text="Tên Tác Giả"></asp:Label>
                </td>
                <td class="style4" 
                    style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txttentacgia" runat="server"></asp:TextBox>
                &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label6" runat="server" Text="Mô tả"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtmota" runat="server" TextMode="MultiLine" Height="85px" 
                        Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label7" runat="server" Text="Tên Chủ Đề Hiện Tại"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:DropDownList ID="ddtenchudeht" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label15" runat="server" Text="Chọn Tên Chủ Đề Mới"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:DropDownList ID="ddmachude" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label8" runat="server" Text="Tên Nhà Xuất Bản Hiện Tại"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:DropDownList ID="ddtennxbht" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label16" runat="server" Text="Chọn Tên Nhà Xuất Bản Mới"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:DropDownList ID="ddmanhaxuatban" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label9" runat="server" Text="Ngày Cập Nhật"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtngaycapnhat" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtngaycapnhat_CalendarExtender" runat="server"
                        Enabled="True" TargetControlID="txtngaycapnhat">
                    </asp:CalendarExtender>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtngaycapnhat" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; padding-right: 8px;">
                    <asp:Label ID="Label12" runat="server" Text="Đưa Ảnh Đại Diện: "></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
                    <asp:Button ID="btnupload" runat="server" Text="Đưa Hình Lên" 
                        onclick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label13" runat="server" Text="Đường Dẫn Ảnh: "></asp:Label>
                    </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtpath" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; padding-right: 8px;">
                    <asp:Button ID="btnhoantat" runat="server" onclick="btnhoantat_Click" Text="Hòan Tất" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style3
        {
            width: 50%;
            height: 19px;
        }
        .style4
        {
            height: 19px;
        }
    </style>

</asp:Content>


