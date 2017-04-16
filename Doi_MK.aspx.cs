using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doi_MK : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        txtmkm.Focus();
        txttendn.Text = Session["username"].ToString();
    }

    Doi_Mat_Khau dmk = new Doi_Mat_Khau();
    protected void btndmk_Click(object sender, EventArgs e)
    {
        try
        {
            dmk.tendn = txttendn.Text;
            dmk.matkhau = Encrypt.EncryptText(txtmkm.Text.ToString().Trim(),true);
            dmk.matkhauthat = txtmkm.Text.ToString().Trim();
            dmk.updatemk(dmk);
            lblthongbao.Text = "Đổi Mật Khẩu Thành Công!";
            HttpCookie cookiepassword = new HttpCookie("PassWord");
            cookiepassword.Values.Add("Password", Encrypt.EncryptText(txtmkm.Text.Trim(), true));
            Response.Cookies.Add(cookiepassword);
        }
        catch (SqlException ex)
        {
            lblthongbao.Text = ex.Message.ToString();
        }
    }
}
