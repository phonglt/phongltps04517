using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_SuaVaXoaSach : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else if (int.Parse(Session["role"].ToString()) != 1)
            Response.Redirect("TrangChu.aspx");
        if (!IsPostBack)
        {
            gettenchude();
            getnhaxuatban();
        }
    }

    private void gettenchude()
    {
        AccessData ac = new AccessData();
        string sql = "select Tenchude, macd from chude";
        ddmachude.DataTextField = "Tenchude";
        ddmachude.DataValueField = "macd";
        ddmachude.DataSource = ac.GetTable(sql);
        ddmachude.DataBind();
    }

    private void getnhaxuatban()
    {
        AccessData ac = new AccessData();
        string cmd = "select Tennxb, manxb from nhaxuatban";
        ddmanhaxuatban.DataTextField = "Tennxb";
        ddmanhaxuatban.DataValueField = "manxb";
        ddmanhaxuatban.DataSource = ac.GetTable(cmd);
        ddmanhaxuatban.DataBind();
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
    NhapSach ns = new NhapSach();
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "select")//Load d? li?u lên các control
        {
            var ac = new AccessData();
            SqlDataReader reader = ac.ExecuteReader(@"Select tensach, dongia, donvitinh, mota, hinhminhhoa, ngaycapnhat, tentacgia from sach Where masach= " + int.Parse(GridView1.Rows[index].Cells[0].Text) + "");
            while (reader.Read())
            {
                txttensach.Text = reader[0].ToString();
                txtdongia.Text = reader[1].ToString();
                txtdonvitinh.Text = reader[2].ToString();
                txtmota.Text = reader[3].ToString();
                txtpath.Text = reader[4].ToString();
                txtngaycapnhat.Text = reader[5].ToString();
                txttentacgia.Text = reader[6].ToString();
            }
            reader.Close();
            ViewState["masach"] = int.Parse(GridView1.Rows[index].Cells[0].Text);
            txtmasach.Text = GridView1.Rows[index].Cells[0].Text;

            string sql1 = "select s.manxb, tennxb from nhaxuatban n, sach s where n.manxb = s.manxb and masach = " + int.Parse(GridView1.Rows[index].Cells[0].Text) + "";
            ddtennxbht.DataTextField = "tennxb";
            ddtennxbht.DataValueField = "manxb";
            ddtennxbht.DataSource = ac.GetTable(sql1);
            ddtennxbht.DataBind();

            string sql2 = "select s.macd, tenchude from chude c, sach s where c.macd = s.macd and masach = " + int.Parse(GridView1.Rows[index].Cells[0].Text) + "";
            ddtenchudeht.DataTextField = "tenchude";
            ddtenchudeht.DataValueField = "macd";
            ddtenchudeht.DataSource = ac.GetTable(sql2);
            ddtenchudeht.DataBind();
        }
        else if (e.CommandName == "del")//Xóa tin
        {
            ns.masach = int.Parse(GridView1.Rows[index].Cells[0].Text);
            ns.delete(ns);
            Response.Redirect("~/Admin_SuaVaXoaSach.aspx");//?? hi?n th? l?i k?t qu? sau khi xóa
        }
    }
    protected void btnhoantat_Click(object sender, EventArgs e)
    {
        try
        {
            ns.masach = int.Parse(txtmasach.Text);
            ns.tensach = txttensach.Text;
            ns.dongia = txtdongia.Text;
            ns.donvitinh = txtdonvitinh.Text;
            ns.mota = txtmota.Text;
            ns.macd = int.Parse(ddmachude.Text.ToString());
            ns.hinhminhhoa = txtpath.Text;
            ns.manxb = int.Parse(ddmanhaxuatban.Text.ToString());
            ns.ngaycapnhat = txtngaycapnhat.Text;
            ns.tentacgia = txttentacgia.Text;
            ns.update(ns);
        }
        catch (SqlException ex)
        {
            lblthongbao.Text = ex.Message.ToString();
        }
    }
}
