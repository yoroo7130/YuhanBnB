using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class log : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string id = txtID.Text;
        string pwd = txtPwd.Text;

        SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);

        string sql = "Select muid, mpwd, mcode From Member Where muid = @muid and mpwd = @mpwd";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@muid", id);
        cmd.Parameters.AddWithValue("@mpwd", pwd);

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;

        DataSet ds = new DataSet();
        da.Fill(ds, "Member");

        DataTable dt = ds.Tables["Member"];

        if (dt.Rows.Count == 0)
        {
            txtID.Text = "";
            txtPwd.Text = "";
            lblLogin.Text = "로그인 정보가 일치하지 않습니다.";
        }
        else
        {
            DataRow dr = dt.Rows[0];
            Session["muid"] = dr["muid"].ToString();
            Session["mcode"] = dr["mcode"].ToString();

            RestChk();
            Response.Redirect("index.aspx");
        }
    }

    protected void RestChk()
    {
        SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);

        string sql = "SELECT residx FROM rest WHERE muid = @muid;";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@muid", Session["muid"].ToString());

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;

        DataSet ds = new DataSet();
        da.Fill(ds, "Rest");

        DataTable dt = ds.Tables["Rest"];

        // 숙소가 등록되어 있으면 1, 아니면 0
        if(dt.Rows.Count != 0)
            Session["restchk"] = "True";
        else
            Session["restchk"] = "False";
    }
}