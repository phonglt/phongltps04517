function exec_refresh() 
{
    window.status = "Đang Chuyển tới ..." + myvar;
    myvar = myvar + " .";
    var timerID = setTimeout("exec_refresh();", 220);
    if (timeout > 0) {
        timeout -= 1;
    }
    else {
        clearTimeout(timerID);
        window.status = "";
        window.location = "TrangChu.aspx";
    }
}

var myvar = "";
var timeout = 20;
exec_refresh();   