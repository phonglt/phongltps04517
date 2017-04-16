var str=" (^-^) KIEU BROTHERS'S BOOK STORE |Chào Mừng Các Bạn Ghé Thăm Trang Web của Chúng Tôi (^-^)"
comeback=0
cometo=0
function dis()
{
	window.status=str.substring(0,cometo)
	if(comeback==1)
	{
		cometo--;
		if(cometo==0)
		{
			comeback=0;
		}
	}
	else 
	{
		cometo++;
		if(cometo==str.length)
		{
			comeback=1
		}
	}
	window.status=str.substring(0,cometo)+"|";
	if(cometo==str.length)
	{
		window.setTimeout("dis()",3000);
	} 
	else 
	{
		window.setTimeout("dis()",100);
	}
	
}
dis();