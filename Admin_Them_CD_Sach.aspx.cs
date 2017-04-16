using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Them_CD_Sach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else if (int.Parse(Session["role"].ToString()) != 1)
            Response.Redirect("TrangChu.aspx");
    }

    Nhap_CD_Sach ncds = new Nhap_CD_Sach();
    protected void btnhoattat_Click(object sender, EventArgs e)
    {
        AccessData ac = new AccessData();
        int kttcd = 0;
        SqlDataReader reader = ac.ExecuteReader("Select tenchude from chude");
        while (reader.Read())
        {
            if (reader[0].ToString() == txttencd.Text)
            {
                kttcd = 1;
                lblthongbao.Text = "Tên Chủ Đề đã có rồi, <br> Hãy Nhập Tên Chủ Đề khác!";
            }
        }
        if (kttcd == 0)
        {
            try
            {
                ncds.tenchude = txttencd.Text.ToString().Trim();
                ncds.insert(ncds);
                Response.Redirect("~/Admin_Them_CD_Sach.aspx");
            }
            catch (SqlException ex)
            {
                lblthongbao.Text = ex.Message.ToString();
            }
        }
    }
}
