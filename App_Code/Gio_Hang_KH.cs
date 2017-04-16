using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Gio_Hang_KH
/// </summary>
public class Gio_Hang_KH
{
    public int id { get; set; }
    public string tendn { get; set; }
    public int masach { get; set; }
    public string ngaymua { get; set; }
    private SqlConnection con = new SqlConnection();
    public void insert(Gio_Hang_KH ghkh)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_themghkh";
        cmd.Parameters.Add("@tendn", System.Data.SqlDbType.NVarChar, 50).Value = ghkh.tendn;
        cmd.Parameters.Add("@masach", System.Data.SqlDbType.Int, 100).Value = ghkh.masach;
        cmd.Parameters.Add("@ngaymua", System.Data.SqlDbType.SmallDateTime).Value = ghkh.ngaymua;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void delete(Gio_Hang_KH ghkh)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoaghkh";
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void deletenow(Gio_Hang_KH ghkh)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoaghkhnow";
        cmd.Parameters.Add("@tendn", System.Data.SqlDbType.NVarChar, 50).Value = ghkh.tendn;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void deletesach(Gio_Hang_KH ghkh)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoaghkhsach";
        cmd.Parameters.Add("@masach", System.Data.SqlDbType.NVarChar, 50).Value = ghkh.masach;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}
