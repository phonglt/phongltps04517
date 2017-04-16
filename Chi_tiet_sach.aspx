<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chi_tiet_sach.aspx.cs" Inherits="Chi_tiet_sach" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ScriptManager1" runat="server">
</asp:ToolkitScriptManager>
    <table cellpadding="3" cellspacing="0" class="style1">
        <tr>
            <td class="style3" colspan="2" 
                style="text-align: center; background-color: #3399FF; color: #FFFFFF; font-weight: bolder;">
                CHI TIẾT SÁCH</td>
        </tr>
        <tr>
            <td rowspan="6" 
                style="text-align: center; vertical-align: top; width: 140px; padding-top: 10px;">
                <asp:Image ID="imghinh_minh_hoa" runat="server" Height="100%" Width="100%" />
            </td>
            <td style="padding-left: 8px">
                <asp:Label ID="lblten_sach" runat="server" Font-Bold="True" Font-Size="13pt" 
                    ForeColor="#996600"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <b>Tác Giả: </b>
                <asp:HyperLink ID="hpltac_gia" runat="server" 
                    NavigateUrl="~/Sach_Theo_TacGia_FromChiTietSach.aspx">[hpltac_gia]</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <b>Thể Lọai:</b>
                <asp:HyperLink ID="hplthe_loai_sach" runat="server" 
                    NavigateUrl="~/Sac_theo_CD_From_ChitietSach.aspx">[hplthe_loai_sach]</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <b>Nhà Xuất Bản:</b>
                <asp:HyperLink ID="hplnha_xuat_ban" runat="server" 
                    NavigateUrl="~/Sach_Theo_NXB_FromChiTietSach.aspx">[hplnha_xuat_ban]</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <b>Đơn Giá:</b>
                <asp:Label ID="lbldon_gia" runat="server" ForeColor="#FF3300"></asp:Label>
            &nbsp;VNĐ /
                <asp:Label ID="lblcuon" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="padding-left: 8px">
                <asp:ImageButton ID="imgbtnchonmua" runat="server" 
                    ImageUrl="~/images/nut_chonmua.gif" onclick="imgbtnchonmua_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblmo_ta" runat="server" Font-Bold="False" Font-Italic="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style3
        {
            font-size: large;
            font-weight: bold;
        }
    </style>

</asp:Content>


