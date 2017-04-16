using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Them_NXB : System.Web.UI.Page
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
        AccessData ac = new AccessData();
        int kttcd = 0;
        SqlDataReader reader = ac.ExecuteReader("Select tennxb from nhaxuatban");
        while (reader.Read())
        {
            if (reader[0].ToString() == txttennxb.Text)
            {
                kttcd = 1;
                lblthongbao.Text = "Nhà Xuất Bản đã có rồi, <br> Hãy Nhập Nhà Xuất Bản khác!";
            }
        }
        if (kttcd == 0)
        {
            try
            {
                nnxb.tennxb = txttennxb.Text.ToString().Trim();
                nnxb.insert(nnxb);
                Response.Redirect("~/Admin_Them_NXB.aspx");
            }
            catch (SqlException ex)
            {
                lblthongbao.Text = ex.Message.ToString();
            }
        }
    }
}
