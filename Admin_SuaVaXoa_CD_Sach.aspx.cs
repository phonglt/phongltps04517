using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_SuaVaXoa_CD_Sach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else if (int.Parse(Session["role"].ToString()) != 1)
            Response.Redirect("TrangChu.aspx");
    }

    Nhap_CD_Sach ncds = new Nhap_CD_Sach();

    protected void btncapnhat_Click(object sender, EventArgs e)
    {
        try
        {
            ncds.macd = int.Parse(txtmacd.Text);
            ncds.tenchude = txttencdmoi.Text;
            ncds.update(ncds);
        }
        catch (SqlException ex)
        {
            lblthongbao.Text = ex.Message.ToString();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "select")//Load d? li?u lên các control
        {
            var ac = new AccessData();
            SqlDataReader reader = ac.ExecuteReader(@"Select tenchude from chude Where macd= " + int.Parse(GridView1.Rows[index].Cells[0].Text) + "");
            while (reader.Read())
            {
                txttencdht.Text = reader[0].ToString();
            }
            reader.Close();
            ViewState["macd"] = int.Parse(GridView1.Rows[index].Cells[0].Text);
            txtmacd.Text = GridView1.Rows[index].Cells[0].Text;
        }
        else if (e.CommandName == "del")//Xóa tin
        {
            ncds.macd = int.Parse(GridView1.Rows[index].Cells[0].Text);
            ncds.delete(ncds);
            Response.Redirect("~/Admin_SuaVaXoa_CD_Sach.aspx");//?? hi?n th? l?i k?t qu? sau khi xóa
        }
    }
}
