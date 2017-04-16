<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Them_Lien_He.aspx.cs" Inherits="UserControl_Them_Lien_He" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC6600" 
            Text="THÊM ĐỊA CHỈ LIÊN HỆ"></asp:Label>
        <br />
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td style="text-align: right; width: 50%; padding-right: 8px">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#339933" 
                        Text="Tên Chi Nhánh"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px;">
                    <asp:TextBox ID="txttenchinhanh" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txttenchinhanh" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 50%; padding-right: 8px">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="#339933" 
                        Text="Địa Chỉ"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtdiachi" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 50%; padding-right: 8px">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#339933" 
                        Text="Số Điện Thọai"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtsdt" Display="Dynamic" ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 50%; padding-right: 8px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="#339933" 
                        Text="Email"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtemail" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#339933" 
                        Text="Đưa Ảnh Đại Diện: "></asp:Label>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
                    <asp:Button ID="btnduahinhlen" runat="server" Text="Đưa Hình Lên" 
                        onclick="btnduahinhlen_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 50%; padding-right: 8px">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="#339933" 
                        Text="Đường Dẫn Ảnh"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtpath" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <asp:Button ID="btnhoantat" runat="server" Text="Hòan Tất" 
                        onclick="btnhoantat_Click" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <br />
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

