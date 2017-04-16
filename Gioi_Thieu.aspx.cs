using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Gioi_Thieu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblgt.Text += "Được thành lập vào 6/9/2010, với sự hợp tác của ";
        lblgt.Text += "hai anh em là Kiều Vũ Anh Tú và Kiều Vũ Anh Tuấn ";
        lblgt.Text += "với phương châm mang lại những dịch vụ tốt nhất cho ";
        lblgt.Text += "độc giả đam mê tìm hiểu chân trời tri thức. ";
        lblgt.Text += "Chúng Tôi trân trọng những lời góp ý từ phía ";
        lblgt.Text += "các bạn để giúp cho trang web ngày một tốt hơn.";
        
    }
}
