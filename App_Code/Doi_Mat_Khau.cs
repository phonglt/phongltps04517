using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Doi_Mat_Khau
/// </summary>
public class Doi_Mat_Khau
{
    public string tendn { get; set; }
    public string matkhau { get; set; }
    public string matkhauthat { get; set; }
    private SqlConnection con = new SqlConnection();
    public void updatemk(Doi_Mat_Khau dmk)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_doimatkhau";
        cmd.Parameters.Add("tendn", SqlDbType.NVarChar, 50).Value = dmk.tendn;
        cmd.Parameters.Add("matkhau", SqlDbType.NVarChar, 50).Value = dmk.matkhau;
        cmd.Parameters.Add("matkhauthat", SqlDbType.NVarChar, 50).Value = dmk.matkhauthat;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}
