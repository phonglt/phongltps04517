using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_UC_Phan_Quyen : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            if (int.Parse(Session["role"].ToString()) == 1)
            {
                MultiView_Quyen.ActiveViewIndex = 1;
                lblAdmin.Text = Session["username"].ToString();
            }
            else
            {
                MultiView_Quyen.ActiveViewIndex = 0;
                lblUser.Text = Session["username"].ToString();
            }
        }
        if (Session["tongtien"] != null)
            lblsotien.Text = Session["tongtien"].ToString() + " VNĐ";
        else
            lblsotien.Text = "0 VNĐ";
    }
}
