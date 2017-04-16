using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Nhap_CD_Sach
/// </summary>
public class Nhap_CD_Sach
{
    public int macd { get; set; }
    public string tenchude { get; set; }
    private SqlConnection con = new SqlConnection();
    public void insert(Nhap_CD_Sach ncds)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_themcdsach";
        cmd.Parameters.Add("@tenchude", System.Data.SqlDbType.NVarChar, 100).Value = ncds.tenchude;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void update(Nhap_CD_Sach ncds)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_capnhatcdsach";
        cmd.Parameters.Add("@macd", System.Data.SqlDbType.Int).Value = ncds.macd;
        cmd.Parameters.Add("@tenchude", System.Data.SqlDbType.NVarChar, 100).Value = ncds.tenchude;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void delete(Nhap_CD_Sach ncds)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoacdsach";
        cmd.Parameters.Add("@macd", System.Data.SqlDbType.Int).Value = ncds.macd;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
	
}
