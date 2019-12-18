using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class DeleteRes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con.Open();

        SqlCommand cmd = new SqlCommand("deleteres", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@residx", Request["residx"]);

        cmd.ExecuteNonQuery();

        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con1.Open();

        SqlCommand cmd1 = new SqlCommand("deleteres2", con1);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@muid", Request["muid"]);

        cmd1.ExecuteNonQuery();

        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con2.Open();

        SqlCommand cmd2 = new SqlCommand("deleteres3", con2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cmd2.Parameters.AddWithValue("@muid", Request["muid"]);

        cmd2.ExecuteNonQuery();

        SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con3.Open();

        SqlCommand cmd3 = new SqlCommand("deleteres4", con3);
        cmd3.CommandType = CommandType.StoredProcedure;

        cmd3.Parameters.AddWithValue("@muid", Request["muid"]);

        cmd3.ExecuteNonQuery();

        Response.Redirect("testlist.aspx");
    }
}