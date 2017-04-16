using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserControl_UC_SoLuotTruyCap_SoNguoiOnline : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            lblsoluottruycap.Text = "Tổng Số Lượt Truy Cập: " + Application["soluot"].ToString();
            lblonline.Text = "Số Người Đang Online: " + Application["online"].ToString();
        }
    }
}
