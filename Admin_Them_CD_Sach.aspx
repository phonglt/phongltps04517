<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Them_CD_Sach.aspx.cs" Inherits="Admin_Them_CD_Sach" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC6600" 
            Text="THÊM CHỦ ĐỀ SÁCH"></asp:Label>
        <br />
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Tên Chủ Đề"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-bottom: 5px; padding-top: 5px;">
                    <asp:TextBox ID="txttencd" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txttencd" ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnhoattat" runat="server" onclick="btnhoattat_Click" 
                        Text="Hòan Tất" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server" Font-Bold="True" ForeColor="#009933"></asp:Label>
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

