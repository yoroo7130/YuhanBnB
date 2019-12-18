using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Member의 요약 설명입니다.
/// </summary>
public class Member
{
    string _conString;

    public Member()
    {
        _conString = System.Configuration.ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString;
    }

    public DataSet SelectMember()
    {
            SqlConnection con = new SqlConnection(_conString);
            string sql = "SELECT muid, mpwd, mname, memail, mbirth, mjdate, mcode FROM member";
            SqlCommand cmd = new SqlCommand(sql, con);

            SqlDataAdapter ad = new SqlDataAdapter();
            ad.SelectCommand = cmd;

            DataSet ds = new DataSet();
            ad.Fill(ds);

            return ds;
    }

    public int InsertMember(string muid, string mpwd, string mname, string memail, string mbirth, string mcode)
    {
        SqlConnection con = new SqlConnection(_conString);
        string sql = "Insert into Member(muid, mpwd, mname, memail, mbirth, mjdate, mcode) values(@uid, @pwd, @name, @email, @birthday, GETDATE(), @mcode)";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@uid", muid);
        cmd.Parameters.AddWithValue("@pwd", mpwd);
        cmd.Parameters.AddWithValue("@name", mname);
        cmd.Parameters.AddWithValue("@email", memail);
        cmd.Parameters.AddWithValue("@birthday", Convert.ToDateTime(mbirth));
        cmd.Parameters.AddWithValue("@mcode", int.Parse(mcode));

        con.Open();
        int count = cmd.ExecuteNonQuery();
        con.Close();

        return count;
    }

    public int UpdateMember(string muid, string mpwd, string mname, string memail, string mbirth)
    {
        SqlConnection con = new SqlConnection(_conString);
        string sql = "UPDATE member SET mpwd=@pwd, mname=@name, memail=@email, mbirth=@birthday Where muid=@uid";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@uid", muid);
        cmd.Parameters.AddWithValue("@pwd", mpwd);
        cmd.Parameters.AddWithValue("@name", mname);
        cmd.Parameters.AddWithValue("@email", memail);
        cmd.Parameters.AddWithValue("@birthday", Convert.ToDateTime(mbirth));
        con.Open();
        int count = cmd.ExecuteNonQuery();
        con.Close();

        return count;
    }

    public int DeleteMember(string muid)
    {
        SqlConnection con = new SqlConnection(_conString);
        string sql = "Delete From Member Where muid = @muid";

        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@muid", muid);
        con.Open();
        int count = cmd.ExecuteNonQuery();
        con.Close();

        return count;
    }
}