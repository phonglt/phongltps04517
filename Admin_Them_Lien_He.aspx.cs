using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class UserControl_Them_Lien_He : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else if (int.Parse(Session["role"].ToString()) != 1)
            Response.Redirect("TrangChu.aspx");
    }
    protected void btnduahinhlen_Click(object sender, EventArgs e)
    {
        HttpPostedFile file = FileUpload1.PostedFile;
        if (FileUpload1.HasFile == false || file.ContentLength > 500000)
        {
            lblthongbao.Text = "Hãy chọn file dưới 500kb";
        }
        else
        {
            try
            {
                string strpath = Server.MapPath("~/Hinh_Chi_Nhanh/" + FileUpload1.FileName);
                FileUpload1.SaveAs(strpath);
                txtpath.Text = "~/Hinh_Chi_Nhanh/" + FileUpload1.FileName.ToString();
                lblthongbao.Text = "Upload thành công";
            }
            catch
            {
                lblthongbao.Text = "Upload thất bại";
            }
        }
    }

    NhapLienHe nlh = new NhapLienHe();
    protected void btnhoantat_Click(object sender, EventArgs e)
    {
        try
        {
            nlh.tencn = txttenchinhanh.Text;
            nlh.diachi = txtdiachi.Text;
            nlh.sdt = txtsdt.Text;
            nlh.email = txtemail.Text;
            nlh.hinh = txtpath.Text;
            nlh.insert(nlh);
        }
        catch (SqlException ex)
        {
            lblthongbao.Text = ex.Message.ToString();
        }
    }
}
