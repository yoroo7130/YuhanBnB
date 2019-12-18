using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ModifyRes : System.Web.UI.Page
{
    int WASMAC;
    int PAKLOT;
    int BBQ;
    int WIFI;
    int RESFRI;
    int RESAIR;
    int RESBAT;
    int RESTV;
    int BRKFAT;
    int PET;
    int SOMKE;
    int EVENT;

    public string addr;

    protected void Page_Load(object sender, EventArgs e)
    {
        WASMAC = (Request.Form["WASMAC"] == null) ? 0 : 1;
        PAKLOT = (Request.Form["PAKLOT"] == null) ? 0 : 1;
        BBQ = (Request.Form["BBQ"] == null) ? 0 : 1;
        WIFI = (Request.Form["WIFI"] == null) ? 0 : 1;
        RESFRI = (Request.Form["RESFRI"] == null) ? 0 : 1;
        RESAIR = (Request.Form["RESAIR"] == null) ? 0 : 1;
        RESBAT = (Request.Form["RESBAT"] == null) ? 0 : 1;
        RESTV = (Request.Form["RESTV"] == null) ? 0 : 1;
        BRKFAT = (Request.Form["BRKFAT"] == null) ? 0 : 1;
        PET = (Request.Form["PET"] == null) ? 0 : 1;
        SOMKE = (Request.Form["SOMKE"] == null) ? 0 : 1;
        EVENT = (Request.Form["EVENT"] == null) ? 0 : 1;

        // 넘겨져 온 번호 값 검사
        if (String.IsNullOrEmpty(Request["residx"]))
        {
            Response.Write("잘못된 요청입니다.");
            Response.End();
        }
        else
        {
            //수정페이지는 처음 로드시에만 이전 데이터 읽어오자.
            if (!Page.IsPostBack)
            {
                // 넘겨져 온 번호값에 해당하는 글 출력
                DisplayData();

            }
        }
    }
    private void DisplayData()
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("resView3", con1);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@residx", Request["residx"]);

        SqlDataReader dr1 = cmd1.ExecuteReader();

        while (dr1.Read())
        {
            RoomsKeyWord.Text = dr1["keyword1"].ToString();
            RoomsKeyWord1.Text = dr1["keyword2"].ToString();
            RoomsKeyWord2.Text = dr1["keyword3"].ToString();
            RoomsKeyWord3.Text = dr1["keyword4"].ToString();
            RoomsKeyWord4.Text = dr1["keyword5"].ToString();
        }
        dr1.Close();
        con1.Close();

        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con2.Open();
        SqlCommand cmd2 = new SqlCommand("resView2", con2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cmd2.Parameters.AddWithValue("@residx", Request["residx"]);

        SqlDataReader dr2 = cmd2.ExecuteReader();

        while (dr2.Read())
        {
            RoomsName.Text = dr2["resname"].ToString();
            resaddr.Text = dr2["resaddr"].ToString();
            addr = dr2["resaddr"].ToString();
            resevt.Text = dr2["resevt"].ToString();
            resinfo.Text = dr2["resinfo"].ToString();
            rescom.Text = dr2["rescom"].ToString();
            DropDownList1.SelectedValue = dr2["lcode"].ToString();
        }
        dr2.Close();
        con2.Close();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string filePath1 = "C:\\ASP2019\\0322ASP\\resimg\\" + FileUpload1.FileName;
        string filePath2 = "C:\\ASP2019\\0322ASP\\resimg\\" + FileUpload2.FileName;
        string filePath3 = "C:\\ASP2019\\0322ASP\\resimg\\" + FileUpload3.FileName;
        string filePath4 = "C:\\ASP2019\\0322ASP\\resimg\\" + FileUpload4.FileName;
        string filePath5 = "C:\\ASP2019\\0322ASP\\resimg\\" + FileUpload5.FileName;

        FileUpload1.SaveAs(filePath1);
        FileUpload2.SaveAs(filePath2);
        FileUpload3.SaveAs(filePath3);
        FileUpload4.SaveAs(filePath4);
        FileUpload5.SaveAs(filePath5);

        string imageUrl1 = "~/resimg/" + FileUpload1.FileName;
        string imageUrl2 = "~/resimg/" + FileUpload2.FileName;
        string imageUrl3 = "~/resimg/" + FileUpload3.FileName;
        string imageUrl4 = "~/resimg/" + FileUpload4.FileName;
        string imageUrl5 = "~/resimg/" + FileUpload5.FileName;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        SqlCommand cmd = new SqlCommand("modifyres", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@residx", Request["residx"]);
        cmd.Parameters.AddWithValue("@resimg1", imageUrl1);
        cmd.Parameters.AddWithValue("@resimg2", imageUrl2);
        cmd.Parameters.AddWithValue("@resimg3", imageUrl3);
        cmd.Parameters.AddWithValue("@resimg4", imageUrl4);
        cmd.Parameters.AddWithValue("@resimg5", imageUrl5);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        SqlCommand cmd1 = new SqlCommand("modifyres2", con1);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@residx", Request["residx"]);
        cmd1.Parameters.AddWithValue("@KeyWord1", RoomsKeyWord.Text);
        cmd1.Parameters.AddWithValue("@KeyWord2", RoomsKeyWord1.Text);
        cmd1.Parameters.AddWithValue("@KeyWord3", RoomsKeyWord2.Text);
        cmd1.Parameters.AddWithValue("@KeyWord4", RoomsKeyWord3.Text);
        cmd1.Parameters.AddWithValue("@KeyWord5", RoomsKeyWord4.Text);

        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();

        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);


        SqlCommand cmd2 = new SqlCommand("modifyres3", con2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cmd2.Parameters.AddWithValue("@residx", Request["residx"]);
        cmd2.Parameters.AddWithValue("@resname", RoomsName.Text);
        cmd2.Parameters.AddWithValue("@resaddr", resaddr.Text);
        cmd2.Parameters.AddWithValue("@resevt", resevt.Text);
        cmd2.Parameters.AddWithValue("@resinfo", resinfo.Text);
        cmd2.Parameters.AddWithValue("@rescom", rescom.Text);
        cmd2.Parameters.AddWithValue("@lcode", DropDownList1.SelectedValue);
        con2.Open();
        cmd2.ExecuteNonQuery();
        con2.Close();

        SqlConnection con3 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);

        SqlCommand cmd3 = new SqlCommand("modifyres4", con3);
        cmd3.CommandType = CommandType.StoredProcedure;

        cmd3.Parameters.AddWithValue("@residx", Request["residx"]);
        cmd3.Parameters.AddWithValue("@wasmac", WASMAC);
        cmd3.Parameters.AddWithValue("@paklot", PAKLOT);
        cmd3.Parameters.AddWithValue("@bbq", BBQ);
        cmd3.Parameters.AddWithValue("@wifi", WIFI);
        cmd3.Parameters.AddWithValue("@resfri", RESFRI);
        cmd3.Parameters.AddWithValue("@resair", RESAIR);
        cmd3.Parameters.AddWithValue("@resbat", RESBAT);
        cmd3.Parameters.AddWithValue("@restv", RESTV);
        cmd3.Parameters.AddWithValue("@brkfat", BRKFAT);
        cmd3.Parameters.AddWithValue("@pet", PET);
        cmd3.Parameters.AddWithValue("@somke", SOMKE);
        cmd3.Parameters.AddWithValue("@event", EVENT);

        con3.Open();
        cmd3.ExecuteNonQuery();
        con3.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
}