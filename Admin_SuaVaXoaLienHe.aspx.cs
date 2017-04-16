using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_SuaLienHe : System.Web.UI.Page
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
    protected void btnhoantat_Click(object sender, EventArgs e)
    {
        try
        {
            nlh.macn = int.Parse(txtmacn.Text);
            nlh.tencn = txttencn.Text;
            nlh.diachi = txtdiachi.Text;
            nlh.sdt = txtsdt.Text;
            nlh.email = txtemail.Text;
            nlh.hinh = txtpath.Text;
            nlh.update(nlh);
        }
        catch (SqlException ex)
        {
            lblthongbao.Text = ex.Message.ToString();
        }
    }

    NhapLienHe nlh = new NhapLienHe();
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "select")//Load d? li?u lên các control
        {
            var ac = new AccessData();
            SqlDataReader reader = ac.ExecuteReader(@"Select tencn, diachi, sdt, email, hinh from chinhanh Where macn= " + int.Parse(GridView1.Rows[index].Cells[0].Text) + "");
            while (reader.Read())
            {
                txttencn.Text = reader[0].ToString();
                txtdiachi.Text = reader[1].ToString();
                txtsdt.Text = reader[2].ToString();
                txtemail.Text = reader[3].ToString();
                txtpath.Text = reader[4].ToString();
            }
            reader.Close();
            ViewState["macn"] = int.Parse(GridView1.Rows[index].Cells[0].Text);
            txtmacn.Text = GridView1.Rows[index].Cells[0].Text; ;
        }
        else if (e.CommandName == "del")//Xóa tin
        {
            nlh.macn = int.Parse(GridView1.Rows[index].Cells[0].Text);
            nlh.delete(nlh);
            Response.Redirect("~/Admin_SuaVaXoaLienHe.aspx");//?? hi?n th? l?i k?t qu? sau khi xóa
        }
    }
}
