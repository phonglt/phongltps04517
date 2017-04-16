using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    string username, password;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ForceLogOut"] == null)
        {
            if (Request.Cookies["remember"] != null)
            {
                HttpCookie cookieusername = Request.Cookies.Get("UserName");
                HttpCookie cookiepassword = Request.Cookies.Get("Password");
                username = cookieusername.Values["UserName"].ToString();
                password = Encrypt.DecryptText(cookiepassword.Values["Password"].ToString(), true);
                login();
            }
        }
        Session["ForceLogOut"] = null;
    }

    private void login()
    {
        Dang_Nhap dn = new Dang_Nhap(); //Tạo một đối tượng mới cho lớp Dang_Nhap
        int t = dn.CheckLogin(username, Encrypt.EncryptText(password, true)); //gọi phương thức CheckLogin
        if (t > 0)
        {
            Session["UserName"] = username;
            Session["Role"] = t;
            //Response.Redirect("Login_Success.aspx");
        }
        else
        {
            Response.Write("<script>alert('Đăng nhập tự động thất bại');</script>");

        }
    }
}
