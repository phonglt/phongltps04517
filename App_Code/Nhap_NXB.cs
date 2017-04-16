using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Nhap_NXB
/// </summary>
public class Nhap_NXB
{
    public int manxb { get; set; }
    public string tennxb { get; set; }
    private SqlConnection con = new SqlConnection();
    public void insert(Nhap_NXB nnxb)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_themnxb";
        cmd.Parameters.Add("@tennxb", System.Data.SqlDbType.NVarChar, 100).Value = nnxb.tennxb;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void update(Nhap_NXB nnxb)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_capnhatnxb";
        cmd.Parameters.Add("@manxb", System.Data.SqlDbType.Int).Value = nnxb.manxb;
        cmd.Parameters.Add("@tennxb", System.Data.SqlDbType.NVarChar, 100).Value = nnxb.tennxb;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void delete(Nhap_NXB nnxb)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoanxb";
        cmd.Parameters.Add("@manxb", System.Data.SqlDbType.Int).Value = nnxb.manxb;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}
