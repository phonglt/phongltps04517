using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserControl_UC_SACHMOI : System.Web.UI.UserControl
{
    AccessData ac = new AccessData();
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select masach, tensach, dongia, donvitinh, hinhminhhoa from sach where ngaycapnhat >= (getdate() - 20)";
        DataList1.DataSource = ac.GetTable(sql);
        DataList1.DataBind();
    }
}
