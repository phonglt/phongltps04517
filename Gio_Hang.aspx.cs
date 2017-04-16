using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Gio_Hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AccessData ac = new AccessData();
        int tongtienpt;
        if (Session["username"] != null)
        {
            if (Session["masach"] == null)
            {
                if (Session["xoagh"] == null)
                {
                    ViewState["ms"] = Request.QueryString["ms"];
                    if (ViewState["ms"] != null)
                    {
                        string sqltt = "select dongia from sach where masach = " + int.Parse(ViewState["ms"].ToString());
                        if (Session["tongtien"] == null)
                            Session["tongtien"] = 0;
                        if (!IsPostBack)
                        {
                            tongtienpt = ac.ExecuteScalarInt(sqltt);
                            Session["tongtien"] = (Int64.Parse(Session["tongtien"].ToString()) + tongtienpt).ToString();
                        }
                        if (!IsPostBack)
                            writegiohangkh();
                        string sql = "select g.masach, hinhminhhoa, tensach, dongia from sach s, giohangkh g where s.masach = g.masach and g.tendn = " + "'" + Session["username"].ToString() + "'";
                        GridView1.DataSource = ac.GetTable(sql);
                        GridView1.DataBind();
                        lbltongsach.Text = ac.GetTable(sql).Rows.Count.ToString();
                        Session["tongsach"] = lbltongsach.Text;
                        ViewState["ms"] = null;
                    }
                    else
                    {
                        string sqle = "select g.masach, hinhminhhoa, tensach, dongia from sach s, giohangkh g where s.masach = g.masach and g.tendn = " + "'" + Session["username"].ToString() + "'";
                        GridView1.DataSource = ac.GetTable(sqle);
                        GridView1.DataBind();
                        lbltongsach.Text = ac.GetTable(sqle).Rows.Count.ToString();
                        if (ac.GetTable(sqle).Rows.Count == 0)
                            hplthanhtoan.Visible = false;
                        Session["tongsach"] = lbltongsach.Text;
                    }
                }
                else
                {
                    string sqld = "select g.masach, hinhminhhoa, tensach, dongia from sach s, giohangkh g where s.masach = g.masach and g.tendn = " + "'" + Session["username"].ToString() + "'";
                    GridView1.DataSource = ac.GetTable(sqld);
                    GridView1.DataBind();
                    lbltongsach.Text = ac.GetTable(sqld).Rows.Count.ToString();
                    Session["tongsach"] = lbltongsach.Text;
                    if (ac.GetTable(sqld).Rows.Count == 0)
                        hplthanhtoan.Visible = false;
                    Session["xoagh"] = null;
                }
            }
            else
            {
                string sqltt = "select dongia from sach where masach = " + int.Parse(Session["masach"].ToString());
                if (Session["tongtien"] == null)
                    Session["tongtien"] = 0;
                if (!IsPostBack)
                {
                    tongtienpt = ac.ExecuteScalarInt(sqltt);
                    Session["tongtien"] = (Int64.Parse(Session["tongtien"].ToString()) + tongtienpt).ToString();
                }
                if (!IsPostBack)
                    writegiohangkhsession();
                string sql = "select g.masach, hinhminhhoa, tensach, dongia from sach s, giohangkh g where s.masach = g.masach and g.tendn = " + "'" + Session["username"].ToString() + "'";
                GridView1.DataSource = ac.GetTable(sql);
                GridView1.DataBind();
                lbltongsach.Text = ac.GetTable(sql).Rows.Count.ToString();
                Session["tongsach"] = lbltongsach.Text;
                Session["masach"] = null;
            }
            ViewState["ms"] = null;
        }
        else
            Response.Redirect("~/TrangChu.aspx");
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Gio_Hang_KH ghkh2 = new Gio_Hang_KH();
        AccessData ac = new AccessData();
        if (e.CommandName == "del")
        {
            int tongtientt;
            int index = int.Parse(e.CommandArgument.ToString());
            string sqltt = "select dongia from sach where masach = " + int.Parse(GridView1.Rows[index].Cells[0].Text);
            tongtientt = ac.ExecuteScalarInt(sqltt);
            Session["tongtien"] = (Int64.Parse(Session["tongtien"].ToString()) - tongtientt).ToString();
            Session["xoagh"] = "deleted";
            ghkh2.masach = int.Parse(GridView1.Rows[index].Cells[0].Text);
            ghkh2.deletesach(ghkh2);
            Response.Redirect("~/Gio_Hang.aspx");
        }
    }

    private void writegiohangkh()
    {
        Gio_Hang_KH ghkh1 = new Gio_Hang_KH();
        try
        {
            ghkh1.tendn = Session["username"].ToString();
            ghkh1.masach = int.Parse(ViewState["ms"].ToString());
            ghkh1.ngaymua = DateTime.Now.ToString();
            ghkh1.insert(ghkh1);

        }
        catch
        {
            lblthongbao.Text = "Rất Tiếc, Đã Có Lỗi Xảy Ra Khi Ghi dữ Liệu vào Giỏ Hàng!";
        }
    }

    private void writegiohangkhsession()
    {
        Gio_Hang_KH ghkh1 = new Gio_Hang_KH();
        try
        {
            ghkh1.tendn = Session["username"].ToString();
            ghkh1.masach = int.Parse(Session["masach"].ToString());
            ghkh1.ngaymua = DateTime.Now.ToString();
            ghkh1.insert(ghkh1);

        }
        catch
        {
            lblthongbao.Text = "Rất Tiếc, Đã Có Lỗi Xảy Ra Khi Ghi dữ Liệu vào Giỏ Hàng!";
        }
    }
}
