using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class view : System.Web.UI.Page
{
    public string residx, resname, resaddr, rescom, resinfo, resimg1, resimg2, resimg3, resimg4, resimg5, avgscore, reviewcnt;
    public string b_bbq, b_brkfat, b_event, b_paklot, b_pet, b_resair, b_resbat, b_resfri, b_restv, b_somke, b_wasmac, b_wifi;
    public string btn_visible, muid;
    public string rmair, rmbat, rmfri, rmtv;

    protected void Page_Load(object sender, EventArgs e)
    {
        residx = (Request["residx"] != null) ? Request["residx"] : null;
        
        if (!IsPostBack)
        {
            if (residx != null)
            {
                muid = (Session["muid"] != null) ? Session["muid"].ToString() : null;

                LoginChk(residx);
                RestInfo(residx);
                RoomInfo(residx);
                ReviewBoard(residx);
            }
            else
                Response.Redirect("index.aspx");
        }
    }

    private void RestInfo(string residx)
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

                    resname = dr["resname"].ToString();
                    resaddr = dr["resaddr"].ToString();
                    rescom = dr["rescom"].ToString();
                    resinfo = dr["resinfo"].ToString();
                    avgscore = dr["avgscore"].ToString();
                    reviewcnt = dr["reviewcnt"].ToString();
                    resimg1 = dr["resimg1"].ToString();
                    resimg2 = dr["resimg2"].ToString();
                    resimg3 = dr["resimg3"].ToString();
                    resimg4 = dr["resimg4"].ToString();
                    resimg5 = dr["resimg5"].ToString();

                    b_bbq = dr["bbq"].ToString();
                    b_brkfat = dr["brkfat"].ToString();
                    b_paklot = dr["paklot"].ToString();
                    b_pet = dr["pet"].ToString();

                    b_resair = dr["resair"].ToString();
                    b_somke = dr["somke"].ToString();
                    b_wasmac = dr["wasmac"].ToString();
                    b_wifi = dr["wifi"].ToString();

                    b_restv = dr["restv"].ToString();
                    b_resfri = dr["resfri"].ToString();
                    b_event = dr["event"].ToString();
                    b_resbat = dr["resbat"].ToString();

                    if (b_bbq == "True")
                    {
                        b_bbq = "img/icon/check1/ck3.png";
                    }
                    else
                    {
                        b_bbq = "img/icon/check/ck3.png";
                    }
                    if (b_brkfat == "True")
                    {
                        b_brkfat = "img/icon/check1/ck9.png";
                    }
                    else
                    {
                        b_brkfat = "img/icon/check/ck9.png";
                    }
                    if (b_paklot == "True")
                    {
                        b_paklot = "img/icon/check1/ck2.png";
                    }
                    else
                    {
                        b_paklot = "img/icon/check/ck2.png";
                    }
                    if (b_pet == "True")
                    {
                        b_pet = "img/icon/check1/ck10.png";
                    }
                    else
                    {
                        b_pet = "img/icon/check/ck10.png";
                    }
                    if (b_resair == "True")
                    {
                        b_resair = "img/icon/check1/ck6.png";
                    }
                    else
                    {
                        b_resair = "img/icon/check/ck6.png";
                    }
                    if (b_somke == "True")
                    {
                        b_somke = "img/icon/check1/ck11.png";
                    }
                    else
                    {
                        b_somke = "img/icon/check/ck11.png";
                    }
                    if (b_wasmac == "True")
                    {
                        b_wasmac = "img/icon/check1/ck1.png";
                    }
                    else
                    {
                        b_wasmac = "img/icon/check/ck1.png";
                    }
                    if (b_wifi == "True")
                    {
                        b_wifi = "img/icon/check1/ck4.png";
                    }
                    else
                    {
                        b_wifi = "img/icon/check/ck4.png";
                    }
                    if (b_restv == "True")
                    {
                        b_restv = "img/icon/check1/ck8.png";
                    }
                    else
                    {
                        b_restv = "img/icon/check/ck8.png";
                    }
                    if (b_resfri == "True")
                    {
                        b_resfri = "img/icon/check1/ck5.png";
                    }
                    else
                    {
                        b_resfri = "img/icon/check/ck5.png";
                    }
                    if (b_event == "True")
                    {
                        b_event = "img/icon/check1/ck12.png";
                    }
                    else
                    {
                        b_event = "img/icon/check/ck12.png";
                    }
                    if (b_resbat == "True")
                    {
                        b_resbat = "img/icon/check1/ck7.png";
                    }
                    else
                    {
                        b_resbat = "img/icon/check/ck7.png";

                    }
                }
            }
        }
    }

    private void RoomInfo(string residx)
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.RoomInfo", con))
            {
                cmd.Parameters.AddWithValue("@residx", residx);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.Repeater1.DataSource = dt;
                    this.Repeater1.DataBind();                    
                    this.Repeater3.DataSource = dt;
                    this.Repeater3.DataBind();
                    this.Repeater4.DataSource = dt;
                    this.Repeater4.DataBind();
                    // rmname, rmpeo, rmprc, rmcom, rmimg1, rmimg2, rmimg3, rmair, rmbat, rmfri, rmtv

                    DataRow dr = dt.Rows[0];

                    rmair = (dr["rmair"].ToString() == "True") ? ",에어컨" : "";
                    rmbat = (dr["rmbat"].ToString() == "True") ? "욕실용품" : "";
                    rmfri = (dr["rmfri"].ToString() == "True") ? ",냉장고" : "";
                    rmtv = (dr["rmtv"].ToString() == "True") ? ",TV" : "";          
                }
            }
        }
    }

    private void ReviewBoard(string residx)
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.ReviewBoard", con))
            {
                cmd.Parameters.AddWithValue("@residx", residx);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.Repeater2.DataSource = dt;
                    this.Repeater2.DataBind();
                    //muid, rescore, recom, repodate, resscore
                }
            }
        }
    }

    // 숙소를 등록한 사람만 볼 수 있도록 체크
    private void LoginChk(string residx)
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