using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Nhap_QC
/// </summary>
public class Nhap_QC
{
    public int stt { get; set; }
    public string tencty { get; set; }
    public string hinhminhhoa { get; set; }
    public string href { get; set; }
    public string ngaybatdau { get; set; }
    public string ngayhethan { get; set; }
    private SqlConnection con = new SqlConnection();
    public void insert(Nhap_QC nqc)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_themqc";
        cmd.Parameters.Add("@tencty", System.Data.SqlDbType.NVarChar, 50).Value = nqc.tencty;
        cmd.Parameters.Add("@hinhminhhoa", System.Data.SqlDbType.NVarChar, 100).Value = nqc.hinhminhhoa;
        cmd.Parameters.Add("@href", System.Data.SqlDbType.NVarChar, 100).Value = nqc.href;
        cmd.Parameters.Add("@ngaybatdau", System.Data.SqlDbType.SmallDateTime).Value = nqc.ngaybatdau;
        cmd.Parameters.Add("@ngayhethan", System.Data.SqlDbType.SmallDateTime).Value = nqc.ngayhethan;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void update(Nhap_QC nqc)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_capnhatqc";
        cmd.Parameters.Add("stt", System.Data.SqlDbType.Int, 100).Value = nqc.stt;
        cmd.Parameters.Add("@tencty", System.Data.SqlDbType.NVarChar, 50).Value = nqc.tencty;
        cmd.Parameters.Add("@hinhminhhoa", System.Data.SqlDbType.NVarChar, 100).Value = nqc.hinhminhhoa;
        cmd.Parameters.Add("@href", System.Data.SqlDbType.NVarChar, 100).Value = nqc.href;
        cmd.Parameters.Add("@ngaybatdau", System.Data.SqlDbType.SmallDateTime).Value = nqc.ngaybatdau;
        cmd.Parameters.Add("@ngayhethan", System.Data.SqlDbType.SmallDateTime).Value = nqc.ngayhethan;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void delete(Nhap_QC nqc)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoaqc";
        cmd.Parameters.Add("@stt", System.Data.SqlDbType.Int, 100).Value = nqc.stt;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}
