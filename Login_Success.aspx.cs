using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"].ToString() != "")
            lblInfo.Text = "Xin Chào bạn <b>" + Session["username"] + "</b> đã trở lại Website bán sách online của chúng tôi";
    }
}
