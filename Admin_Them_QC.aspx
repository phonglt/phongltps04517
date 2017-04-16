<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Them_QC.aspx.cs" Inherits="Admin_Them_QC" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td colspan="2" style="padding-top: 5px; padding-bottom: 5px">
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC6600" 
            Text="THÊM QUẢNG CÁO"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Tên Công Ty"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txttenct" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txttenct" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Đường Link Liên Kết"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtlink" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Ngày Bắt Đầu"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px">
                    <asp:TextBox ID="txtngaybd" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtngaybd_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtngaybd">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtngaybd" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; padding-right: 8px; width: 50%">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Ngày Kết Thúc"></asp:Label>
                </td>
                <td style="text-align: left; padding-left: 8px; padding-top: 5px; padding-bottom: 5px;">
                    <asp:TextBox ID="txtngaykt" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="txtngaykt_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="txtngaykt">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtngaykt" Display="Dynamic" 
                        ErrorMessage="Không Được Để Trống">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center; font-weight: 700;">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Đưa Ảnh Đại Diện: "></asp:Label>
                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;
                    <asp:Button ID="btnduahinhlen" runat="server" Text="Đưa Hình Lên" 
                        onclick="btnduahinhlen_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" 
                    style="text-align: center; font-weight: 700; padding-top: 5px; padding-bottom: 5px;">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Black" 
                        Text="Đường Dẫn Ảnh"></asp:Label>
                &nbsp;
                    <asp:TextBox ID="txtpath" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnhoantat" runat="server" Text="Hòan Tất" 
                        onclick="btnhoantat_Click" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    <asp:Label ID="lblthongbao" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
        </table>
        
    </center>
</asp:Content>

