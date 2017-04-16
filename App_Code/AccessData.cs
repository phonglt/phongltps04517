using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for AccessData
/// </summary>
public class AccessData
{
    private string ConnectString = @"Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;
Password=66rbhow211;";
    public SqlConnection GetConnect()
    {
        return new SqlConnection(ConnectString);
    }
    //hàm trả về 1 datatable
    public DataTable GetTable(string sql)
    {
        SqlConnection con = GetConnect();
        SqlDataAdapter ad = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        con.Close();
        con.Dispose();
        return dt;
    }
    //hàm thực thi lệnh executenonquery
    public void ExeCuteNonquery(string sql)
    {
        SqlConnection con = GetConnect();
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        cmd.Dispose();
    }
    //Hàm thực thi lệnh ExecuteScalar có trả về giá trị
    public string ExecuteScalar(string sql)
    {
        SqlConnection con = GetConnect();
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        string kq = cmd.ExecuteScalar().ToString();
        con.Close();
        cmd.Dispose();
        return kq;
    }
    public int ExecuteScalarInt(string sql)
    {
        SqlConnection con = GetConnect();
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        int kq = int.Parse(cmd.ExecuteScalar().ToString());
        con.Close();
        cmd.Dispose();
        return kq;
    }
    public SqlDataReader ExecuteReader(string sql)
    {
        SqlConnection con = GetConnect();
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        SqlDataReader reader = cmd.ExecuteReader();
        return reader;
    }
}