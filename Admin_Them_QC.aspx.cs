using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;


public partial class Admin_Them_QC : System.Web.UI.Page
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
                string strpath = Server.MapPath("~/images/" + FileUpload1.FileName);
                FileUpload1.SaveAs(strpath);
                txtpath.Text = "~/images/" + FileUpload1.FileName.ToString();
                lblthongbao.Text = "Upload thành công";
            }
            catch
            {
                lblthongbao.Text = "Upload thất bại";
            }
        }
    }

    Nhap_QC nqc = new Nhap_QC();

    protected void btnhoantat_Click(object sender, EventArgs e)
    {
        try
        {
            nqc.tencty = txttenct.Text;
            nqc.hinhminhhoa = txtpath.Text;
            nqc.href = txtlink.Text;
            nqc.ngaybatdau = txtngaybd.Text;
            nqc.ngayhethan = txtngaykt.Text;
            nqc.insert(nqc);
            Response.Redirect("~/Admin_Them_QC.aspx");
        }
        catch (SqlException ex)
        {
            lblthongbao.Text = ex.Message.ToString();
        }
    }
}
