<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TrangChu.aspx.cs" Inherits="_Default" %>

<%@ Register src="UserControl/UC_SACHMOI.ascx" tagname="UC_SACHMOI" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table cellpadding="5" cellspacing="0" class="style2">
        <tr>
            <td style="background-color: #0099FF; font-weight: bold; color: #FFFFFF; text-align: center; font-size: large; padding-top: 4px; padding-bottom: 4px;">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/new.gif" />
                <b>&nbsp;SÁCH MỚI CẬP NHẬT </b>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/new.gif" />
            </td>
        </tr>
        <tr>
            <td>
                <uc1:UC_SACHMOI ID="UC_SACHMOI1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/QC01.gif" 
                    Width="100%" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/QC02.gif" 
                    Width="100%" />
            </td>
        </tr>
    </table>

</asp:Content>

