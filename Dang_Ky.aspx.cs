using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserControl_Dang_Ky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txthoten.Focus();
    }

    DangKy dk = new DangKy();

    protected void imgbtndangky_Click(object sender, ImageClickEventArgs e)
    {
        AccessData ac = new AccessData();
        int ktdk = 0;
        SqlDataReader reader = ac.ExecuteReader("Select Tendn from khachhang");
        while (reader.Read())
        {
            if (reader[0].ToString() == txttendn.Text)
            {
                ktdk = 1;
                lblthongbao.Text = "Tên đăng nhập đã có người dùng, <br> Hãy Thử Tên Đăng Nhập Khác!";
            }
        }
        if (ktdk == 0)
        {
            try
            {
                dk.hotenkh = txthoten.Text;
                dk.diachikh = txtdiachi.Text;
                dk.dienthoaikh = txtsdt.Text;
                dk.tendn = txttendn.Text.ToString().Trim();
                dk.matkhau = Encrypt.EncryptText(txtmatkhau.Text.ToString().Trim(), true);
                dk.ngaysinh = txtngaysinh.Text;
                dk.gioitinh = txtgioitinh.Text;
                dk.email = txtemail.Text;
                dk.matkhauthat = txtmatkhau.Text;
                dk.quyen = 2;
                dk.insert(dk);
            }
            catch (SqlException ex)
            {
                lblthongbao.Text = ex.Message.ToString();
            }
            Response.Redirect("Dang_Nhap_KH.aspx");
        }
    }
}
