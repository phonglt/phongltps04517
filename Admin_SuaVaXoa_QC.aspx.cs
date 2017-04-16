using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_SuaVaXoa_QC : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else if (int.Parse(Session["role"].ToString()) != 1)
            Response.Redirect("TrangChu.aspx");
    }
    protected void btnduaanhlen_Click(object sender, EventArgs e)
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
            nqc.stt = int.Parse(txtstt.Text.ToString());
            nqc.tencty = txttenct.Text;
            nqc.hinhminhhoa = txtpath.Text;
            nqc.href = txtlink.Text;
            nqc.ngaybatdau = txtngaybd.Text;
            nqc.ngayhethan = txtngaykt.Text;
            nqc.update(nqc);
            Response.Redirect("~/Admin_SuaVaXoa_QC.aspx");
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
            SqlDataReader reader = ac.ExecuteReader(@"Select tencty, hinhminhhoa, href, ngaybatdau, ngayhethan from quangcao Where stt= " + int.Parse(GridView1.Rows[index].Cells[0].Text) + "");
            while (reader.Read())
            {
                txttenct.Text = reader[0].ToString();
                txtpath.Text = reader[1].ToString();
                txtlink.Text = reader[2].ToString();
                txtngaybd.Text = reader[3].ToString();
                txtngaykt.Text = reader[4].ToString();
            }
            reader.Close();
            ViewState["stt"] = int.Parse(GridView1.Rows[index].Cells[0].Text);
            txtstt.Text = GridView1.Rows[index].Cells[0].Text;
        }
        else if (e.CommandName == "del")//Xóa tin
        {
            nqc.stt = int.Parse(GridView1.Rows[index].Cells[0].Text);
            nqc.delete(nqc);
            Response.Redirect("~/Admin_SuaVaXoa_QC.aspx");//?? hi?n th? l?i k?t qu? sau khi xóa
        }
    }
}
