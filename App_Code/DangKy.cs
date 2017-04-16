using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DangKy
/// </summary>
public class DangKy
{
    public int makh { get; set; }
    public string hotenkh { get; set; }
    public string diachikh { get; set; }
    public string dienthoaikh { get; set; }
    public string tendn { get; set; }
    public string matkhau { get; set; }
    public string ngaysinh { get; set; }
    public string gioitinh { get; set; }
    public string email { get; set; }
    public string matkhauthat { get; set; }
    public int quyen { get; set; }
    private SqlConnection con = new SqlConnection();
    public void insert(DangKy dk)
    {
        string cn = "Server=ltp1305.mssql.somee.com;Database=ltp1305;User Id=TheMadKitten_SQLLogin_1;Password=66rbhow211;";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_dangkykh";
        cmd.Parameters.Add("@hotenkh", System.Data.SqlDbType.NVarChar, 50).Value = dk.hotenkh;
        cmd.Parameters.Add("@diachikh", System.Data.SqlDbType.NVarChar, 100).Value = dk.diachikh;
        cmd.Parameters.Add("@dienthoaikh", System.Data.SqlDbType.NVarChar, 50).Value = dk.dienthoaikh;
        cmd.Parameters.Add("@tendn", System.Data.SqlDbType.NVarChar, 50).Value = dk.tendn;
        cmd.Parameters.Add("@matkhau", System.Data.SqlDbType.NVarChar, 50).Value = dk.matkhau;
        cmd.Parameters.Add("@ngaysinh", System.Data.SqlDbType.SmallDateTime).Value = dk.ngaysinh;
        cmd.Parameters.Add("@gioitinh", System.Data.SqlDbType.NVarChar, 50).Value = dk.gioitinh;
        cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar, 50).Value = dk.email;
        cmd.Parameters.Add("@matkhauthat", System.Data.SqlDbType.NVarChar, 50).Value = dk.matkhauthat;
        cmd.Parameters.Add("@quyen", System.Data.SqlDbType.Int, 50).Value = dk.quyen;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void update(DangKy dk)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_capnhatkh";
        cmd.Parameters.Add("@makh", System.Data.SqlDbType.Int, 50).Value = dk.makh;
        cmd.Parameters.Add("@hotenkh", System.Data.SqlDbType.NVarChar, 50).Value = dk.hotenkh;
        cmd.Parameters.Add("@diachikh", System.Data.SqlDbType.NVarChar, 100).Value = dk.diachikh;
        cmd.Parameters.Add("@dienthoaikh", System.Data.SqlDbType.NVarChar, 50).Value = dk.dienthoaikh;
        cmd.Parameters.Add("@tendn", System.Data.SqlDbType.NVarChar, 50).Value = dk.tendn;
        cmd.Parameters.Add("@matkhau", System.Data.SqlDbType.NVarChar, 50).Value = dk.matkhau;
        cmd.Parameters.Add("@ngaysinh", System.Data.SqlDbType.SmallDateTime).Value = dk.ngaysinh;
        cmd.Parameters.Add("@gioitinh", System.Data.SqlDbType.NVarChar, 50).Value = dk.gioitinh;
        cmd.Parameters.Add("@email", System.Data.SqlDbType.NVarChar, 50).Value = dk.email;
        cmd.Parameters.Add("@matkhauthat", System.Data.SqlDbType.NVarChar, 50).Value = dk.matkhauthat;
        cmd.Parameters.Add("@quyen", System.Data.SqlDbType.Int, 50).Value = dk.quyen;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }

    public void delete(DangKy dk)
    {
        string cn = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|QLBansach_Data.mdf;Integrated Security=True;User Instance=True";
        con = new SqlConnection(cn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "st_xoakh";
        cmd.Parameters.Add("@makh", System.Data.SqlDbType.Int, 50).Value = dk.makh;
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
    }
}
