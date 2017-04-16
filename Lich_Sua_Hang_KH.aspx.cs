using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Lich_Sua_Hang_KH : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AccessData ac = new AccessData();
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        string sql = "select tensach, dongia, ngaymua from sach s, lichsumuahang l where s.masach = l.masach and l.tendn = " + "'" + Session["username"].ToString() + "'";
        GridView1.DataSource = ac.GetTable(sql);
        GridView1.DataBind();
        if (ac.GetTable(sql).Rows.Count == 0)
        {
            lblthongbao.Visible = true;
        }
    }
}
