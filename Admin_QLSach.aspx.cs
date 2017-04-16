using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_QLSach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else if (int.Parse(Session["role"].ToString()) != 1)
            Response.Redirect("TrangChu.aspx");

        if (!IsPostBack)
        {
            AccessData ac = new AccessData();
            string sql = "select Tenchude, macd from chude";
            ddmachude.DataTextField = "Tenchude";
            ddmachude.DataValueField = "macd";
            ddmachude.DataSource = ac.GetTable(sql);
            ddmachude.DataBind();

            string cmd = "select Tennxb, manxb from nhaxuatban";
            ddmanhaxuatban.DataTextField = "Tennxb";
            ddmanhaxuatban.DataValueField = "manxb";
            ddmanhaxuatban.DataSource = ac.GetTable(cmd);
            ddmanhaxuatban.DataBind();
        }
    }

    NhapSach ns = new NhapSach();

    protected void btnhoantat_Click(object sender, EventArgs e)
    {
        try
        {
            ns.tensach = txttensach.Text;
            ns.dongia = txtdongia.Text;
            ns.donvitinh = txtdonvitinh.Text;
            ns.mota = txtmota.Text;
            ns.macd = int.Parse(ddmachude.Text.ToString());
            ns.hinhminhhoa = txtpath.Text;
            ns.manxb = int.Parse(ddmanhaxuatban.Text.ToString());
            ns.ngaycapnhat = txtngaycapnhat.Text;
            ns.tentacgia = txttentacgia.Text;
            ns.insert(ns);
        }
        catch (SqlException ex)
        {
            lblthongbao.Text = ex.Message.ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
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
                string strpath = Server.MapPath("~/Hinhdulieu/" + FileUpload1.FileName);
                FileUpload1.SaveAs(strpath);
                txtpath.Text = "~/Hinhdulieu/" + FileUpload1.FileName.ToString();
                lblthongbao.Text = "Upload thành công";
            }
            catch
            {
                lblthongbao.Text = "Upload thất bại";
            }
        }
    }
}
