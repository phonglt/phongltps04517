<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dang_Nhap_KH.aspx.cs" Inherits="Dang_Nhap_KH" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
<center>
    <table cellpadding="5" cellspacing="0" class="style1">
        <tr>
            <td class="style3" colspan="2" style="text-align: center">
                Vui lòng nhập UserName và PassWord để đăng nhập</td>
        </tr>
        <tr>
            <td style="text-align: right">
                <b>UserName</b></td>
            <td style="text-align: left; padding-top: 4px; padding-bottom: 4px;">
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuser" ErrorMessage="Không được để trống UserName">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                <b>&nbsp;&nbsp; PassWord</b></td>
            <td style="text-align: left; width: 50%;">
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpass" ErrorMessage="Không được để trống PassWord">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="padding-top: 4px; padding-bottom: 4px">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:CheckBox ID="ckbghi_nho" runat="server" 
                    Text="Ghi nhớ mật khẩu cho lần đăng nhập sau" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" 
                    ImageUrl="~/images/dangnhap.png" onclick="ImageButton1_Click" Width="90px" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
    </table>
    
</center>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style3
        {
            font-size: large;
        }
    </style>

</asp:Content>


