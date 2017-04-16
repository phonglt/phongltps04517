<%@ Application Language="C#" %>
<%@ Import Namespace = "System.IO" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        Application["soluot"] = 0;
        Application["online"] = 0;
        StreamReader docfile = new StreamReader(Server.MapPath("SoLuotTruyCap.txt"));
        Application["soluot"] = int.Parse(docfile.ReadLine());
        docfile.Close();

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown
        Application["online"] = (int)Application["online"] - 1;
        Session["ForceLogOut"] = null;
        Session["xoagh"] = null;

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        Session["username"] = null;
        Session["ForceLogOut"] = null;
        Session["role"] = "";
        Session["tentg"] = null;
        Session["manxb"] = null;
        Session["macd"] = null;
        Session["masach"] = null;
        Session["timkiem"] = null;
        Session["tongtien"] = null;
        Session["tongsach"] = null;
        Session["xoagh"] = null;
        Application["soluot"] = (int)Application["soluot"] + 1;
        StreamWriter ghifile = new StreamWriter(Server.MapPath("SoLuotTruyCap.txt"));
        ghifile.Write(Application["soluot"].ToString());
        ghifile.Close();
        if (Application["online"] == null)
        {
            Application["online"] = 0;
        }
        else
        {
            Application["online"] = (int)Application["online"] + 1;
        }

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
        Application["online"] = (int) Application["online"] - 1;
        Session["ForceLogOut"] = null;
        Session["xoagh"] = null;

    }
       
</script>
