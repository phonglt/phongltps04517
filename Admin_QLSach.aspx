<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_QLSach.aspx.cs" Inherits="Admin_QLSach" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" 
            ForeColor="#FF9900" Text="THÊM SÁCH"></asp:Label>
        <br />
        <br />
        <table cellpadding="3" cellspacing="0" class="style1">
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtdongia" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
&nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label5" runat="server" Text="Đơn Vị Tính"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtdonvitinh" runat="server">Cuốn</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtdonvitinh" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label14" runat="server" Text="Tên Tác Giả"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txttentacgia" runat="server"></asp:TextBox>
                </td>
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
                    <asp:Label ID="Label7" runat="server" Text="Tên Chủ Đề"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:DropDownList ID="ddmachude" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%;">
                    <asp:Label ID="Label8" runat="server" Text="Tên Nhà Xuất Bản"></asp:Label>
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
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtngaycapnhat" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: center; padding-right: 8px; " colspan="2">
                    <asp:Label ID="Label12" runat="server" Text="Đưa Ảnh Đại Diện: "></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Đưa Hình Lên" 
                        onclick="Button1_Click" />
                &nbsp;<br />
                    <asp:Label ID="Label13" runat="server" Text="Đường Dẫn Ảnh: "></asp:Label>
                    <asp:TextBox ID="txtpath" runat="server"></asp:TextBox>
                    <br />
&nbsp;<asp:Button ID="btnhoantat" runat="server" onclick="btnhoantat_Click" Text="Hòan Tất" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
        
    </center>
</asp:Content>

