using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    private string residx;
    public string resaddr, resimg1, btn_visible, muid, reviewcnt, avgscore;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        residx = "1";
        muid = "admin";
        if (!IsPostBack)
        {
            LoginChk();
            RestInfo();
        }
    }

    private void RestInfo()
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.RestInfo", con))
            {
                cmd.Parameters.AddWithValue("@residx", residx);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    DataSet ds = new DataSet();
                    da.Fill(ds, "rest");

                    DataTable dt = ds.Tables["rest"];
                    DataRow dr = dt.Rows[0];

                    TextBox1.Text =  dr["resname"].ToString();
                    resimg1 = dr["resimg1"].ToString();
                    resaddr = dr["resaddr"].ToString();
                    avgscore = dr["avgscore"].ToString();
                    reviewcnt = dr["reviewcnt"].ToString();
                }
            }
        }
    }

    private void LoginChk()
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            string qry = "SELECT muid FROM rest WHERE residx=@residx";
            using (SqlCommand cmd = new SqlCommand(qry, con))
            {
                cmd.Parameters.AddWithValue("@residx", residx);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.SelectCommand = cmd;

                    DataSet ds = new DataSet();
                    da.Fill(ds, "user");

                    DataTable dt = ds.Tables["user"];
                    DataRow dr = dt.Rows[0];

                    if (muid != dr["muid"].ToString())
                    {
                        btn_visible = "display:none";
                    }
                }
            }
        }
    }
}