<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThongTinCaNhan.aspx.cs" Inherits="ThongTinCaNhan" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <center>
        
        <table cellpadding="3" cellspacing="0" class="style2">
            <tr>
                <td class="style3">
                    THÔNG TIN CÁ NHÂN</td>
            </tr>
            <tr>
                <td>
                            <table cellpadding="3" cellspacing="0" class="style2" __designer:mapid="ca" 
                                style="background-color: #FFFFCC">
                                <tr __designer:mapid="cb">
                                    <td __designer:mapid="cc">
                                        <asp:Label ID="Label1" runat="server" Text="Họ và Tên:" Font-Size="12pt" 
                                            ForeColor="#996633" Font-Bold="True"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="lblhoten" runat="server" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="cf">
                                    <td __designer:mapid="d0">
                                        <asp:Label ID="Label2" runat="server" Text="Địa Chỉ:" Font-Size="12pt" 
                                            ForeColor="#996633" Font-Bold="True"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="lbldiachi" runat="server" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="d3">
                                    <td __designer:mapid="d4">
                                        <asp:Label ID="Label3" runat="server" Text="Điện Thoại:" Font-Size="12pt" 
                                            ForeColor="#996633" Font-Bold="True"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="lbldienthoai" runat="server" Font-Bold="True" 
                                            ForeColor="#0066FF"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="da">
                                    <td __designer:mapid="db">
                                        <asp:Label ID="Label5" runat="server" Text="Ngày sinh:" Font-Size="12pt" 
                                            ForeColor="#996633" Font-Bold="True"></asp:Label>
&nbsp;
                                        <asp:Label ID="lblngaysinh" runat="server" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="dc">
                                    <td __designer:mapid="dd">
                                        <asp:Label ID="Label6" runat="server" Text="Giới Tính:" Font-Size="12pt" 
                                            ForeColor="#996633" Font-Bold="True"></asp:Label>
&nbsp;
                                        <asp:Label ID="lblgioitinh" runat="server" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
                                    </td>
                                </tr>
                                <tr __designer:mapid="de">
                                    <td __designer:mapid="df">
                                        <asp:Label ID="Label7" runat="server" Text="Email:" Font-Size="12pt" 
                                            ForeColor="#996633" Font-Bold="True"></asp:Label>
&nbsp;
                                        <asp:Label ID="lblemail" runat="server" Font-Bold="True" ForeColor="#0066FF"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="lblwellcome" runat="server" Font-Bold="True" ForeColor="#FF66FF"></asp:Label><br />
            </center>
            </asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style3
        {
            color: #009933;
            font-weight: bold;
        }
        </style>
</asp:Content>


