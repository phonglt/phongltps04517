using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Ket_Qua_Tim_Kiem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["timkiem"] == null || Session["timkiem"] == "")
        {
            Response.Write("<script>alert('Hãy Nhập Vào Từ Khóa Tìm Kiếm');</script>");
            Response.Redirect("~/TrangChu.aspx");
        }
        else
        {
            lbltukhoa.Text = "Từ Khóa: " + "'" + Session["timkiem"].ToString() + "'";
            tongsosach(Session["timkiem"].ToString());
        }
    }

    public void tongsosach(string tongsach)
    {
        AccessData ac = new AccessData();
        string sql = "select * from sach where tensach like N" + "'" + "%" + tongsach + "%" + "'";
        DataTable dt = ac.GetTable(sql);
        int ts = dt.Rows.Count;
        lblsosach.Text = "Tìm Thấy: " + ts.ToString() + " Sách";
    }
}
