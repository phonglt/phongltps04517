<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_TopMenu.ascx.cs" Inherits="UserControl_UC_TopMenu" %>

<table cellpadding="0" cellspacing="0">
    <tr>
        <td style="background-image: url('images/bg_menu_top.jpg'); height: 27px; background-repeat: repeat; width: 960px; text-align: center; color: #FFFFFF; padding-left: 8px;">
            <asp:Image ID="Image1" runat="server" Height="18px" 
                ImageUrl="~/images/navbits_start.gif" Width="18px" />
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="14pt" 
                ForeColor="White" NavigateUrl="~/TrangChu.aspx">Trang Chủ</asp:HyperLink>
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" Height="18px" 
                ImageUrl="~/images/Bar Chart.png" Width="18px" />
&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Size="14pt" 
                ForeColor="White" NavigateUrl="~/Gioi_Thieu.aspx">Giới thiệu</asp:HyperLink>
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;<asp:Image ID="Image3" runat="server" Height="18px" 
                ImageUrl="~/images/Modify.png" Width="18px" />
&nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Size="14pt" 
                ForeColor="White" NavigateUrl="~/Dang_Ky.aspx">Đăng Ký</asp:HyperLink>
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;<asp:Image ID="Image4" runat="server" Height="18px" 
                ImageUrl="~/images/Info.png" Width="18px" />
&nbsp;<asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Size="14pt" 
                ForeColor="White" NavigateUrl="~/Dang_Nhap_KH.aspx">Đăng Nhập</asp:HyperLink>
&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;<asp:Image ID="Image5" runat="server" Height="18px" 
                ImageUrl="~/images/Comment.png" Width="18px" />
&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" Font-Size="14pt" 
                ForeColor="White" NavigateUrl="~/Lien_He.aspx">Liên Hệ</asp:HyperLink>
        </td>
    </tr>
</table>
