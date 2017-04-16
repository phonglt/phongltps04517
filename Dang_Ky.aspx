﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dang_Ky.aspx.cs" Inherits="UserControl_Dang_Ky" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FF3300" 
            Text="ĐĂNG KÝ TÀI KHỎAN MỚI"></asp:Label>
        <br />
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Họ và Tên"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
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
                <td style="text-align: left; padding-left: 8px">
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
                <td style="text-align: left; padding-left: 8px">
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
                <td style="text-align: left; padding-left: 8px">
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
                        ErrorMessage="Không Được Đặt PassWord Rỗng">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" 
                        Text="Nhập Lại Mật Khẩu"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtnhaplaimk" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtmatkhau" ControlToValidate="txtnhaplaimk" 
                        Display="Dynamic" ErrorMessage="Xác Nhận Password Không Đúng">*</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtnhaplaimk" ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:ImageButton ID="imgbtndangky" runat="server" 
                        ImageUrl="~/images/dangky.png" onclick="imgbtndangky_Click" />
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

