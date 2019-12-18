using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MemberView : System.Web.UI.Page
{
    public string residx;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["muid"] != null)
        {
            if (Session["mcode"].ToString() == "2" || Session["restchk"].ToString() == "True")
            {
                MultiView1.ActiveViewIndex = 0;
            }
            else
                MultiView1.ActiveViewIndex = 1;
        }
        else
        {
            string script = "<script type = 'text/javascript'>alert('잘못된 접근입니다.');location.href = 'index.aspx';</script>";
            Response.Write(script);
            Response.End();
        }

        if (!Page.IsPostBack)
        {
            DisplayData();
        }
        if(lblcode.Text == "1")
        {
            lblcode.Text = "회원";
        }
        else if(lblcode.Text == "2")
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

        while (dr.Read())
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

        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("MemberView2", con1);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@muid", Request["muid"]);

        SqlDataReader dr1 = cmd1.ExecuteReader();

        while (dr1.Read())
        {
            lblresname.Text = dr1["resname"].ToString();
            Image1.ImageUrl = dr1["resimg1"].ToString();
            residx = dr1["residx"].ToString();
        }
        dr1.Close();
        con1.Close();
    }

    protected void button1_Click(object sender, EventArgs e)
    {
        string strurl = String.Empty;
        strurl = "./modifymember.aspx?muid=" + Request["muid"];
        Response.Redirect(strurl);
    }
    

    protected void button6_Click(object sender, EventArgs e)
    {
        string strurl = String.Empty;
        strurl = "./deletemember.aspx?muid=" + Request["muid"];
        Response.Redirect(strurl);
    }
}