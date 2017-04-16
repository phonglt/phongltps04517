<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_Phan_Quyen.ascx.cs" Inherits="UserControl_UC_Phan_Quyen" %>
<asp:MultiView ID="MultiView_Quyen" runat="server">
    <asp:View ID="View_Khach_Hang" runat="server">
        <table cellpadding="3" cellspacing="0" class="style1" 
            
            
            style="font-weight: bold; background-repeat: repeat; color: #FFFFFF; width: 100%;">
            <tr>
                <td style="text-align: center; background-color: #CC3300; color: #FFFFFF; font-weight: bold; padding-top: 5px; padding-bottom: 5px;" 
                    colspan="2">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="MENU NGƯỜI DÙNG" 
                        ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image1" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                    &nbsp;
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#CC3300" 
                        Text="Chào bạn"></asp:Label>
                    &nbsp;<asp:Label ID="lblUser" runat="server" ForeColor="Yellow"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image19" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_ttcn" runat="server" NavigateUrl="~/ThongTinCaNhan.aspx">Thông Tin Cá Nhân</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image20" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_lsmh" runat="server" 
                        NavigateUrl="~/Lich_Sua_Hang_KH.aspx">Lịch Sử Mua Hàng</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image32" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="HyperLink6" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Doi_MK.aspx">Đổi Mật Khẩu</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image21" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hplthoat" runat="server" NavigateUrl="~/Logout.aspx">Thóat</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td colspan="2" 
                    
                    style="background-color: #3399FF; color: #FFFFFF; font-weight: bold; text-align: center; padding-top: 3px; padding-bottom: 3px;">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="GIỎ HÀNG" 
                        Font-Size="13pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" 
                    style="text-align: left; background-color: #FFFFCC;">
                    <asp:Image ID="Image40" runat="server" Height="25px" 
                        ImageUrl="~/images/Giohang.gif" Width="30px" />
                    <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="#CC9900" 
                        NavigateUrl="~/Gio_Hang.aspx">Giỏ Hàng Của Tôi</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-color: #FFFFCC; text-align: left;" colspan="2">
                    <asp:Image ID="Image41" runat="server" Height="25px" 
                        ImageUrl="~/images/Sotien.gif" Width="30px" />
                    <asp:Label ID="Label6" runat="server" ForeColor="#CC9900" Text="Tổng Số Tiền: "></asp:Label>
                    <asp:Label ID="lblsotien" runat="server" Font-Bold="True" ForeColor="#FF3300" 
                        Font-Size="11pt"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    &nbsp;</td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:View>
    <asp:View ID="View_ADMIN" runat="server">
        <table cellpadding="3" cellspacing="0" class="style1" 
            
            style="background-repeat: repeat; color: #FFFFFF; width: 100%;">
            <tr>
                <td style="text-align: center; background-color: #CC3300; color: #FFFFFF; font-weight: bold; padding-top: 5px; padding-bottom: 5px;" 
                    colspan="2">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="MENU QUẢN TRỊ " 
                        ForeColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image22" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                    &nbsp;
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#FF9900" 
                        Text="Chào Quản Trị"></asp:Label>
                    &nbsp;<asp:Label ID="lblAdmin" runat="server" ForeColor="#CC0000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image23" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_ttcnAdmin" runat="server" 
                        NavigateUrl="~/ThongTinCaNhan.aspx" Font-Bold="True">Thông Tin Cá Nhân</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image24" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_DoiMK" runat="server" NavigateUrl="~/Doi_MK.aspx" 
                        Font-Bold="True">Thay Đổi Mật Khẩu</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image25" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_QLSach" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_Them_CD_Sach.aspx">Thêm Chủ Đề Sách</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image37" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_QLSach0" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_SuaVaXoa_CD_Sach.aspx">Sửa Và Xóa Chủ Đề Sách</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image29" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_quanlysach" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_QLSach.aspx">Thêm Sách</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image33" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_quanlysach0" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_SuaVaXoaSach.aspx">Sửa và Xóa Sách</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image34" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_quanlysach1" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_Them_Lien_He.aspx">Thêm Liên Hệ</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image35" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hpl_quanlysach2" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_SuaVaXoaLienHe.aspx">Sửa Và Xóa Liên Hệ</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image26" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_Them_NXB.aspx">Thêm Nhà Xuất Bản</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image38" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="HyperLink8" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_SuaVaXoa_NXB.aspx">Sửa Và Xóa Nhà Xuất Bản</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image30" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_ThemTaiKhoanMoi.aspx">Thêm Tài Khỏan</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image36" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="HyperLink7" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_SuaVaXoaKhachHang.aspx">Sửa Và Xóa Tài Khỏan</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image31" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="HyperLink5" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_Them_QC.aspx">Thêm Quảng Cáo</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image39" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="HyperLink9" runat="server" Font-Bold="True" 
                        NavigateUrl="~/Admin_SuaVaXoa_QC.aspx">Sửa Và Xóa Quảng Cáo</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="background-image: url('images/nenxanh_cottrai.gif');">
                    <asp:Image ID="Image28" runat="server" Height="10px" 
                        ImageUrl="~/images/arrow.png" Width="10px" />
                </td>
                <td style="background-image: url('images/nenxanh_cottrai.gif'); text-align: left;">
                    <asp:HyperLink ID="hplthoatAdmin" runat="server" NavigateUrl="~/Logout.aspx">Thóat</asp:HyperLink>
                </td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>