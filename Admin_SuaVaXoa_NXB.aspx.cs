using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_SuaVaXoa_NXB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else if (int.Parse(Session["role"].ToString()) != 1)
            Response.Redirect("TrangChu.aspx");
    }

    Nhap_NXB nnxb = new Nhap_NXB();

    protected void btnhoantat_Click(object sender, EventArgs e)
    {
        try
        {
            nnxb.manxb = int.Parse(txtmanxb.Text);
            nnxb.tennxb = txttenmoi.Text;
            nnxb.update(nnxb);
            Response.Redirect("~/Admin_SuaVaXoa_NXB.aspx");
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
            SqlDataReader reader = ac.ExecuteReader(@"Select tennxb from nhaxuatban Where manxb= " + int.Parse(GridView1.Rows[index].Cells[0].Text) + "");
            while (reader.Read())
            {
                txttenhientai.Text = reader[0].ToString();
            }
            reader.Close();
            ViewState["manxb"] = int.Parse(GridView1.Rows[index].Cells[0].Text);
            txtmanxb.Text = GridView1.Rows[index].Cells[0].Text;
        }
        else if (e.CommandName == "del")//Xóa tin
        {
            nnxb.manxb = int.Parse(GridView1.Rows[index].Cells[0].Text);
            nnxb.delete(nnxb);
            Response.Redirect("~/Admin_SuaVaXoa_NXB.aspx");//?? hi?n th? l?i k?t qu? sau khi xóa
        }
    }
}
