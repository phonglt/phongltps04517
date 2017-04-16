using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ThongTinCaNhan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string getuser;
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else
        {
            getuser = Session["username"].ToString();
            tenkh(getmakh(Session["username"].ToString()));
            diachi(getmakh(Session["username"].ToString()));
            dienthoai(getmakh(Session["username"].ToString()));
            ngaysinh(getmakh(Session["username"].ToString()));
            gioitinh(getmakh(Session["username"].ToString()));
            email(getmakh(Session["username"].ToString()));
            if (Request.Cookies["lancuoi"] == null)
            {
                lblwellcome.Text = "Chào Mừng Bạn Ghé Thăm Trang Web trong ngày hôm nay!";
                Response.Cookies["lancuoi"].Value = DateTime.Now.ToString();
                Response.Cookies["lancuoi"].Expires = DateTime.Now.AddDays(1);
            }
            else
            {
                lblwellcome.Text = "Chào Bạn " + getuser + " Lần Cuối Bạn Ghé Web là: " + Request.Cookies["lancuoi"].Value;
            }
            Response.Cookies["lancuoi"].Value = DateTime.Now.ToString();
            Response.Cookies["lancuoi"].Expires = DateTime.Now.AddDays(1);
        }
    }

    public string getmakh(string user)
    {
        AccessData ac = new AccessData();
        string sql = "select makh from khachhang where tendn =" + "'" + user + "'";
        string ts = ac.ExecuteScalar(sql);
        return ts;
    }

    public void tenkh(string user)
    {
        AccessData ac = new AccessData();
        string sql = "select hotenkh from khachhang where makh =" + user;
        string ts = ac.ExecuteScalar(sql);
        lblhoten.Text = ts.ToString();
    }

    public void diachi(string user)
    {
        AccessData ac = new AccessData();
        string sql = "select diachikh from khachhang where makh =" + user;
        string ts = ac.ExecuteScalar(sql);
        lbldiachi.Text = ts.ToString();
    }

    public void dienthoai(string user)
    {
        AccessData ac = new AccessData();
        string sql = "select dienthoaikh from khachhang where makh =" + user;
        string ts = ac.ExecuteScalar(sql);
        lbldienthoai.Text = ts.ToString();
    }

    public void ngaysinh(string user)
    {
        AccessData ac = new AccessData();
        string sql = "select ngaysinh from khachhang where makh =" + user;
        string ts = ac.ExecuteScalar(sql);
        lblngaysinh.Text = ts.ToString();
    }

    public void gioitinh(string user)
    {
        AccessData ac = new AccessData();
        string sql = "select gioitinh from khachhang where makh =" + user;
        string ts = ac.ExecuteScalar(sql);
        lblgioitinh.Text = ts.ToString();
    }

    public void email(string user)
    {
        AccessData ac = new AccessData();
        string sql = "select email from khachhang where makh =" + user;
        string ts = ac.ExecuteScalar(sql);
        lblemail.Text = ts.ToString();
    }
}
