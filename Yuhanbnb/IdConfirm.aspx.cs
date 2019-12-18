using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class IdConfirm : System.Web.UI.Page
{
    private static Boolean ID_Chk;
    private string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = txtID.Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);

        string sql = "Select * From Member Where muid = @muid";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("@muid", id);

        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;

        DataSet ds = new DataSet();
        da.Fill(ds, "Member");

        DataTable dt = ds.Tables["Member"];
        
        if(id.Length > 0)
        {
            if(dt.Rows.Count < 1)
            {
                ID_Chk = true;
                Label1.Text = "<font color=blue>사용 가능한 아이디 입니다.</font>";
            }
            else
            {
                ID_Chk = false;
                Label1.Text = "<font color=red>" + id + "</font>" + "는 이미 사용중인 아이디입니다.";
                txtID.Focus();
            }
        }
        else
        {
            ID_Chk = false;
            Label1.Text = "<font color=red>아이디를 입력해 주세요.</font>";
        }
    }

    public void txtID_textChanged(object sender, EventArgs e)
    {
        if (ID_Chk)
        {
            ID_Chk = false;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if(id.Length > 0)
        {
            if (ID_Chk == true)
            {
                Button2.Attributes["OnClick"] = "Repri();";
            }
            else
            {
                ID_Chk = false;
                Label1.Text = "아이디를 중복확인 하세요.";
            }
        }
        else
        {
            ID_Chk = false;
            Label1.Text = "<font color=red>아이디를 입력해 주세요.</font>";
        }
    }
}