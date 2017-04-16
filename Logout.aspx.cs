using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            deletegiohang();
            Session["username"] = null;
            Session["tongtien"] = null;
            Session["tongsach"] = null;
            Session["ForceLogOut"] = "ForceLogOut";
            Response.Redirect("TrangChu.aspx");
        }
    }

    Gio_Hang_KH ghkh = new Gio_Hang_KH();
    protected void deletegiohang()
    {
        ghkh.tendn = Session["username"].ToString();
        ghkh.deletenow(ghkh);
    }
}
