using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_SuaVaXoaKhachHang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
            Response.Redirect("TrangChu.aspx");
        else if (int.Parse(Session["role"].ToString()) != 1)
            Response.Redirect("TrangChu.aspx");
    }

    DangKy dk = new DangKy();
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int index = int.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "select")//Load d? li?u lên các control
        {
            var ac = new AccessData();
            SqlDataReader reader = ac.ExecuteReader(@"Select hotenkh, diachikh, dienthoaikh, tendn, matkhau, ngaysinh, gioitinh, email, matkhauthat, quyen from khachhang Where makh= " + int.Parse(GridView1.Rows[index].Cells[0].Text) + "");
            while (reader.Read())
            {
                txthoten.Text = reader[0].ToString();
                txtdiachi.Text = reader[1].ToString();
                txtsdt.Text = reader[2].ToString();
                txttendn.Text = reader[3].ToString();
                txtmatkhau.Text = reader[4].ToString();
                txtngaysinh.Text = reader[5].ToString();
                txtgioitinh.Text = reader[6].ToString();
                txtemail.Text = reader[7].ToString();
                txtmatkhau.Text = reader[8].ToString();
                ddlquyenmoi.Text = reader[9].ToString();
            }
            reader.Close();
            ViewState["makh"] = int.Parse(GridView1.Rows[index].Cells[0].Text);
            txtmakh.Text = GridView1.Rows[index].Cells[0].Text;
        }
        else if (e.CommandName == "del")//Xóa tin
        {
            dk.makh = int.Parse(GridView1.Rows[index].Cells[0].Text);
            dk.delete(dk);
            Response.Redirect("~/Admin_SuaVaXoaKhachHang.aspx");//?? hi?n th? l?i k?t qu? sau khi xóa
        }
    }
    protected void btnsuadoi_Click(object sender, EventArgs e)
    {
        try
        {
            dk.makh = int.Parse(txtmakh.Text);
            dk.hotenkh = txthoten.Text;
            dk.diachikh = txtdiachi.Text;
            dk.dienthoaikh = txtsdt.Text;
            dk.tendn = txttendn.Text;
            dk.matkhau = Encrypt.EncryptText(txtmatkhau.Text, true);
            dk.ngaysinh = txtngaysinh.Text;
            dk.gioitinh = txtgioitinh.Text;
            dk.email = txtemail.Text;
            dk.matkhauthat = txtmatkhau.Text;
            dk.quyen = int.Parse(ddlquyenmoi.Text);
            dk.update(dk);
        }
        catch (SqlException ex)
        {
            lblthongbao.Text = ex.Message.ToString();
        }
    }
}
