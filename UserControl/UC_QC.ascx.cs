using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UserControl_UC_QC : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AccessData ac = new AccessData();
        string sql = "select stt, hinhminhhoa, href, ngaybatdau, ngayhethan from quangcao where getdate() between ngaybatdau and ngayhethan";
        GridView1.DataSource = ac.GetTable(sql);
        GridView1.DataBind();
    }
}
