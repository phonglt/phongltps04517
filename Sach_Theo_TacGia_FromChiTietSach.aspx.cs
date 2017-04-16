using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sach_Theo_TacGia_FromChiTietSach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AccessData ac = new AccessData();
        string sql = "select masach, tensach, dongia, donvitinh, hinhminhhoa from sach where tentacgia = N" + "'" + Session["tentg"] + "'";
        DataList1.DataSource = ac.GetTable(sql);
        DataList1.DataBind();
        danhmucsach(Session["tentg"].ToString());
        lbltentacgia.Text = "Tác Giả: " + Session["tentg"].ToString();
        Session["tentg"] = null;
    }

    public void danhmucsach(string tentacgia)
    {
        AccessData ac = new AccessData();
        string sql = "select * from sach where tentacgia = N" + "'" + tentacgia + "'";
        DataTable dt = ac.GetTable(sql);
        int ts = dt.Rows.Count;
        lbltong_so_sach.Text = "Hiện có " + ts.ToString() + " Sách";
    }
}
