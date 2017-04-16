using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sach_theo_chu_de : System.Web.UI.Page
{
    AccessData ac = new AccessData();
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["mcd"] = Request.QueryString["mcd"];
        danhmucsach(int.Parse(ViewState["mcd"].ToString()));
        chudesach(int.Parse(ViewState["mcd"].ToString()));
    }

    public void danhmucsach(int mcd)
    {
        string sql = "select * from sach where macd = " + mcd;
        DataTable dt = ac.GetTable(sql);
        int ts = dt.Rows.Count;
        lbltong_so_sach.Text = "Hiện có " + ts.ToString() + " Sách";
    }

    public void chudesach(int mcd)
    {
        string sql = "select tenchude from chude where macd=" + mcd;
        string tencd = ac.ExecuteScalar(sql);
        lbltencd.Text = "Chủ Đề Sách: " + tencd.ToString();
    }
        
}
