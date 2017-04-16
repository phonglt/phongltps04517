<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Success.aspx.cs" Inherits="Login_Success" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Successfully</title>
    <script language="javascript" type="text/javascript" src="JavaScript/RedirectingJS.js"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: large;
            font-weight: bold;
        }
        .style3
        {
            color: #009900;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
            
            <table cellpadding="0" cellspacing="0" class="style1" 
                style="border: thin solid #008000">
                <tr>
                    <td style="background-color: #FFFF99">
                        <span class="style2">Đang Chuyển hướng....</span><br />
                        <span class="style3">Vui lòng đợi&nbsp;<br />
                        <br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/nycli1.gif" />
                        <br />
                        <br />
                        </span>
                    </td>
                </tr>
                <tr>
                    <td style="background-color: #FFFF99">
                        <asp:Label ID="lblInfo" runat="server" Font-Size="15pt" ForeColor="#3399FF"></asp:Label>
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="13pt" 
                            NavigateUrl="~/TrangChu.aspx">Về Trang Chủ</asp:HyperLink>
                    </td>
                </tr>
            </table>
            
        </center>
    </div>
    </form>
</body>
</html>
