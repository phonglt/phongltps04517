using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Dang_Nhap_KH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Response.Redirect("TrangChu.aspx");
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Dang_Nhap dn = new Dang_Nhap(); //Tạo một đối tượng mới cho lớp Dang_Nhap
        int t = dn.CheckLogin(txtuser.Text, Encrypt.EncryptText(txtpass.Text, true)); //gọi phương thức CheckLogin
        if (t > 0)
        {
            Session["UserName"] = txtuser.Text;
            Session["Role"] = t;
            WriteCookie();
            Response.Redirect("Login_Success.aspx");
        }
        else
        {
            Response.Write("<script>alert('Đăng nhập thất bại');</script>");

        }

    }

    protected void WriteCookie()
    {
        if (ckbghi_nho.Checked == true)
        {
            HttpCookie cookie = new HttpCookie("remember", "yes");
            Response.Cookies.Add(cookie);
            HttpCookie cookieusername = new HttpCookie("UserName");
            cookieusername.Values.Add("UserName", txtuser.Text.Trim());
            HttpCookie cookiepassword = new HttpCookie("PassWord");
            cookiepassword.Values.Add("Password", Encrypt.EncryptText(txtpass.Text.Trim(), true));
            Response.Cookies.Add(cookie);
            Response.Cookies.Add(cookieusername);
            Response.Cookies.Add(cookiepassword);
        }
    }
}
