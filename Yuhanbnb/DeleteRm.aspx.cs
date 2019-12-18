using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DeleteRm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("deleterm", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@rmidx", Request["rmidx"]);

        cmd.ExecuteNonQuery();

        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con1.Open();

        SqlCommand cmd1 = new SqlCommand("deleterm2", con1);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@rmidx", Request["rmidx"]);

        cmd1.ExecuteNonQuery();

        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con2.Open();

        SqlCommand cmd2 = new SqlCommand("deleterm3", con2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cmd2.Parameters.AddWithValue("@rmidx", Request["rmidx"]);

        cmd2.ExecuteNonQuery();

        Response.Redirect("testlist2.aspx");
    }
}