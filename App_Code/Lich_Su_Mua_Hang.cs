using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Lich_Su_Mua_Hang
/// </summary>
public class Lich_Su_Mua_Hang
{
    public int id { get; set; }
    public string tendn { get; set; }
    public int masach { get; set; }
    public string ngaymua { get; set; }
    private SqlConnection con = new SqlConnection();
    public void insert(Lich_Su_Mua_Hang lsmh)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_themlsnh";
        cmd.Parameters.Add("@tendn", System.Data.SqlDbType.NVarChar, 50).Value = lsmh.tendn;
        cmd.Parameters.Add("@masach", System.Data.SqlDbType.Int, 100).Value = lsmh.masach;
        cmd.Parameters.Add("@ngaymua", System.Data.SqlDbType.SmallDateTime).Value = lsmh.ngaymua;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void delete(Lich_Su_Mua_Hang nlmh)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoalsmh";
        cmd.Parameters.Add("@id", System.Data.SqlDbType.Int, 50).Value = nlmh.id;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}
