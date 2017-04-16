using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for NhapLienHe
/// </summary>
public class NhapLienHe
{
    public int macn { get; set; }
    public string tencn { get; set; }
    public string diachi { get; set; }
    public string sdt { get; set; }
    public string email { get; set; }
    public string hinh { get; set; }
    private SqlConnection con = new SqlConnection();
    public void insert(NhapLienHe nlh)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_themlienhe";
        cmd.Parameters.Add("@tencn", System.Data.SqlDbType.NVarChar, 50).Value = nlh.tencn;
        cmd.Parameters.Add("@diachi", System.Data.SqlDbType.NVarChar, 100).Value = nlh.diachi;
        cmd.Parameters.Add("@sdt", System.Data.SqlDbType.NVarChar, 10).Value = nlh.sdt;
        cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar, 50).Value = nlh.email;
        cmd.Parameters.Add("@hinh", System.Data.SqlDbType.NVarChar, 50).Value = nlh.hinh;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void update(NhapLienHe nlh)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_capnhatlienhe";
        cmd.Parameters.Add("@macn", System.Data.SqlDbType.Int, 50).Value = nlh.macn;
        cmd.Parameters.Add("@tencn", System.Data.SqlDbType.NVarChar, 50).Value = nlh.tencn;
        cmd.Parameters.Add("@diachi", System.Data.SqlDbType.NVarChar, 100).Value = nlh.diachi;
        cmd.Parameters.Add("@sdt", System.Data.SqlDbType.NVarChar, 10).Value = nlh.sdt;
        cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar, 50).Value = nlh.email;
        cmd.Parameters.Add("@hinh", System.Data.SqlDbType.NVarChar, 50).Value = nlh.hinh;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void delete(NhapLienHe nlh)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoalienhe";
        cmd.Parameters.Add("@macn", System.Data.SqlDbType.Int, 50).Value = nlh.macn;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}
