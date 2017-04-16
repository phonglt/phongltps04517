using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sach_Theo_NXB_FromChiTietSach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AccessData ac = new AccessData();
        string sql = "select masach, tensach, dongia, donvitinh, hinhminhhoa from sach where manxb = " + Session["manxb"];
        DataList1.DataSource = ac.GetTable(sql);
        DataList1.DataBind();
        danhmucsach(int.Parse(Session["manxb"].ToString()));
        tennhaxuatban(int.Parse(Session["manxb"].ToString()));
        Session["manxb"] = null;
    }

    public void danhmucsach(int mnxb)
    {
        AccessData ac = new AccessData();
        string sql = "select * from sach where manxb = " + mnxb;
        DataTable dt = ac.GetTable(sql);
        int ts = dt.Rows.Count;
        lbltong_so_sach.Text = "Hiện có " + ts.ToString() + " Sách";
    }

    public void tennhaxuatban(int mnxb)
    {
        AccessData ac = new AccessData();
        string sql = "select tennxb from nhaxuatban n, sach s where n.manxb = s.manxb and s.manxb=" + mnxb;
        string tencd = ac.ExecuteScalar(sql);
        lbltencd.Text = "Nhà Xuất Bản: " + tencd.ToString();
    }
}
