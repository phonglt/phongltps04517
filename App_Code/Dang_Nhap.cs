using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Dang_Nhap
/// </summary>
public class Dang_Nhap
{
    public int CheckLogin(string UserName, string Password)
    {
        int result = 0;
        AccessData ac = new AccessData();
        SqlDataReader reader = ac.ExecuteReader("Select tendn, matkhau, quyen from khachhang");
        while (reader.Read())
        {
            if (reader[0].ToString() == UserName && reader[1].ToString() == Password)
            {
                return int.Parse(reader[2].ToString());
            }
        }
        return 0;
    }
}
