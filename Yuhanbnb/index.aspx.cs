using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.RestTop5();
            this.RestTopBestRestTop3();
            this.ReviewTop6();
        }
    }

    private void RestTop5()
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.RestTop5", con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.Repeater1.DataSource = dt;
                    this.Repeater1.DataBind();
                }
            }
        }
    }

    private void RestTopBestRestTop3()
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.BestRestTop3", con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.Repeater2.DataSource = dt;
                    this.Repeater2.DataBind();
                }
            }
        }
    }

    private void ReviewTop6()
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.ReviewTop6", con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.Repeater3.DataSource = dt;
                    this.Repeater3.DataBind();
                }
            }
        }
    }

    private void reviewCnt(int residx)
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.ReviewCnt", con))
            {
                cmd.Parameters.AddWithValue("@residx",residx);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.Repeater3.DataSource = dt;
                    this.Repeater3.DataBind();
                }
            }
        }
    }
}