using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Sach_theo_NXB : System.Web.UI.Page
{
    AccessData ac = new AccessData();
    protected void Page_Load(object sender, EventArgs e)
    {
        ViewState["mnxb"] = Request.QueryString["mnxb"];
        tongsosach(int.Parse(ViewState["mnxb"].ToString()));
        tennhaxuatban(int.Parse(ViewState["mnxb"].ToString()));
    }

    public void tongsosach(int mnxb)
    {
        string sql = "select * from sach where manxb = " + mnxb;
        DataTable dt = ac.GetTable(sql);
        int ts = dt.Rows.Count;
        lbltongsosach.Text = "Hiện có " + ts.ToString() + " Sách";
    }

    public void tennhaxuatban(int mnxb)
    {
        string sql = "select tennxb from sach s, nhaxuatban n where s.manxb = n.manxb and s.manxb=" + mnxb;
        string tencd = ac.ExecuteScalar(sql);
        lbltennxb.Text = "Nhà Xuất Bản: " + tencd.ToString();
    }
}
