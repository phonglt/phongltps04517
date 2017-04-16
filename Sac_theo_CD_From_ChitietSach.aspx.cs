using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sac_theo_CD_From_ChitietSach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AccessData ac = new AccessData();
        string sql = "select masach, tensach, dongia, donvitinh, hinhminhhoa from sach where macd = " + Session["macd"];
        DataList1.DataSource = ac.GetTable(sql);
        DataList1.DataBind();
        danhmucsach(int.Parse(Session["macd"].ToString()));
        chudesach(int.Parse(Session["macd"].ToString()));
        Session["macd"] = null;
    }

    public void danhmucsach(int mcd)
    {
        AccessData ac = new AccessData();
        string sql = "select * from sach where macd = " + mcd;
        DataTable dt = ac.GetTable(sql);
        int ts = dt.Rows.Count;
        lbltong_so_sach.Text = "Hiện có " + ts.ToString() + " Sách";
    }

    public void chudesach(int mcd)
    {
        AccessData ac = new AccessData();
        string sql = "select tenchude from chude where macd=" + mcd;
        string tencd = ac.ExecuteScalar(sql);
        lbltencd.Text = "Chủ Đề Sách: " + tencd.ToString();
    }


}
