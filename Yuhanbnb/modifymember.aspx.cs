using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class modifymember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            DisplayData();
        }
        if (lblcode.Text == "1")
        {
            lblcode.Text = "회원";
        }
        else if (lblcode.Text == "2")
        {
            lblcode.Text = "관리자";
        }


    }

    private void DisplayData()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("MemberView", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@muid", Request["muid"]);

        SqlDataReader dr = cmd.ExecuteReader();

        while(dr.Read())
        {
            lblid.Text = dr["muid"].ToString();
            lblName.Text = dr["mname"].ToString();
            lblemail.Text = dr["memail"].ToString();
            lblbirth.Text = dr["mbirth"].ToString();
            lbldate.Text = dr["mjdate"].ToString();
            lblcode.Text = dr["mcode"].ToString();

        }
        dr.Close();
        con.Close();
    }

    protected void txtPwd_PreRender(object sender, EventArgs e)
    {
        txtPwd.Attributes.Add("value", txtPwd.Text);
    }

    protected void txtPwdChk_PreRender(object sender, EventArgs e)
    {
        txtPwdChk.Attributes.Add("value", txtPwdChk.Text);
    }

    

    protected void button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        SqlCommand cmd = new SqlCommand("modifymember", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@muid", lblid.Text);
        cmd.Parameters.AddWithValue("@mpwd", txtPwd.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Redirect("Memberlist.aspx");
    }
}