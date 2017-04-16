using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Chi_tiet_sach : System.Web.UI.Page
{
    AccessData ac = new AccessData();
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["ms"] = Request.QueryString["ms"];
        tensach(int.Parse(ViewState["ms"].ToString()));
        theloaisach(int.Parse(ViewState["ms"].ToString()));
        nhaxuatban(int.Parse(ViewState["ms"].ToString()));
        dongia(int.Parse(ViewState["ms"].ToString()));
        donvitinh(int.Parse(ViewState["ms"].ToString()));
        hinhminhhoa(int.Parse(ViewState["ms"].ToString()));
        tacgia(int.Parse(ViewState["ms"].ToString()));
        mota(int.Parse(ViewState["ms"].ToString()));
        gettentg(int.Parse(ViewState["ms"].ToString()));
        getmanxb(int.Parse(ViewState["ms"].ToString()));
        getmachude(int.Parse(ViewState["ms"].ToString()));
    }

    public void tensach(int masach)
    {
        string sql = "select tensach from sach where masach =" + masach;
        string ts = ac.ExecuteScalar(sql);
        lblten_sach.Text = ts.ToString();
    }

    public void theloaisach(int masach)
    {
        string sql = "select tenchude from chude c, sach s where c.macd = s.macd and masach = " + masach;
        string tls = ac.ExecuteScalar(sql);
        hplthe_loai_sach.Text = tls.ToString();
    }

    public void nhaxuatban(int masach)
    {
        string sql = "select tennxb from nhaxuatban n, sach s where n.manxb = s.manxb and masach = " + masach;
        string nxb = ac.ExecuteScalar(sql);
        hplnha_xuat_ban.Text = nxb.ToString();
    }

    public void dongia(int masach)
    {
        string sql = "select dongia from sach where masach = " + masach;
        int dg = ac.ExecuteScalarInt(sql);
        lbldon_gia.Text = dg.ToString();
    }

    public void donvitinh(int masach)
    {
        string sql = "select donvitinh from sach where masach = " + masach;
        string dvt = ac.ExecuteScalar(sql);
        lblcuon.Text = dvt.ToString();
    }

    public void hinhminhhoa(int masach)
    {
        string sql = "select hinhminhhoa from sach where masach = " + masach;
        string hmh = ac.ExecuteScalar(sql);
        imghinh_minh_hoa.ImageUrl = hmh.ToString();
    }

    public void tacgia(int masach)
    {
        string sql = "select tentacgia from sach where masach = " + masach;
        string tg = ac.ExecuteScalar(sql);
        hpltac_gia.Text = tg.ToString();
    }

    public void mota(int masach)
    {
        string sql = "select mota from sach where masach = " + masach;
        string mt = ac.ExecuteScalar(sql);
        lblmo_ta.Text = mt.ToString();
    }

    public void gettentg(int masach)
    {
        string sql = "select tentacgia from sach where masach = " + masach;
        string ms = ac.ExecuteScalar(sql);
        Session["tentg"] = ms;
    }

    public void getmanxb(int masach)
    {
        string sql = "select manxb from sach where masach = " + masach;
        string manhaxuatban = ac.ExecuteScalar(sql);
        Session["manxb"] = manhaxuatban;
    }

    public void getmachude(int masach)
    {
        string sql = "select macd from sach where masach = " + masach;
        string machude = ac.ExecuteScalar(sql);
        Session["macd"] = machude;
    }
    protected void imgbtnchonmua_Click(object sender, ImageClickEventArgs e)
    {
        Session["masach"] = ViewState["ms"];
        Response.Redirect("~/Gio_Hang.aspx");
    }
}
