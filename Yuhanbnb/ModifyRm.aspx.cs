using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ModifyRm : System.Web.UI.Page
{
    int RMFRI;
    int RMAIR;
    int RMBAT;
    int RMTV;
    public string residx;
    protected void Page_Load(object sender, EventArgs e)
    {
        RMFRI = (Request.Form["RMFRI"] == null) ? 0 : 1;
        RMAIR = (Request.Form["RMAIR"] == null) ? 0 : 1;
        RMBAT = (Request.Form["RMBAT"] == null) ? 0 : 1;
        RMTV = (Request.Form["RMTV"] == null) ? 0 : 1;

        // 넘겨져 온 번호 값 검사
        if (String.IsNullOrEmpty(Request["rmidx"]))
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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("rmView1", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@rmidx", Request["rmidx"]);

        SqlDataReader dr = cmd.ExecuteReader();

        while (dr.Read())
        {
            Image1.ImageUrl = dr["rmimg1"].ToString();
            Image2.ImageUrl = dr["rmimg2"].ToString();
            Image3.ImageUrl = dr["rmimg3"].ToString();

        }
        dr.Close();
        con.Close();

        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("rmView2", con1);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@rmidx", Request["rmidx"]);

        SqlDataReader dr1 = cmd1.ExecuteReader();

        while (dr1.Read())
        {
            RoomName.Text = dr1["rmname"].ToString();
            DropDownList1.SelectedValue = dr1["rmpeo"].ToString();
            RoomPrice.Text = dr1["rmprc"].ToString();
            RoomComment.Text = dr1["rmcom"].ToString();
            residx = dr1["residx"].ToString();
        }
        dr1.Close();
        con1.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string filePath1 = "C:\\ASP2019\\0322ASP\\rmimg\\" + FileUpload1.FileName;
        string filePath2 = "C:\\ASP2019\\0322ASP\\rmimg\\" + FileUpload2.FileName;
        string filePath3 = "C:\\ASP2019\\0322ASP\\rmimg\\" + FileUpload3.FileName;

        FileUpload1.SaveAs(filePath1);
        FileUpload2.SaveAs(filePath2);
        FileUpload3.SaveAs(filePath3);


        string imageUrl1 = "~/rmimg/" + FileUpload1.FileName;
        string imageUrl2 = "~/rmimg/" + FileUpload2.FileName;
        string imageUrl3 = "~/rmimg/" + FileUpload3.FileName;

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        SqlCommand cmd = new SqlCommand("modifyrm", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@rmidx", Request["rmidx"]);
        cmd.Parameters.AddWithValue("@rmimg1", imageUrl1);
        cmd.Parameters.AddWithValue("@rmimg2", imageUrl2);
        cmd.Parameters.AddWithValue("@rmimg3", imageUrl3);


        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();


        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        SqlCommand cmd1 = new SqlCommand("modifyrm2", con1);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@rmidx", Request["rmidx"]);
        cmd1.Parameters.AddWithValue("@rmname", RoomName.Text);
        cmd1.Parameters.AddWithValue("@rmpeo", DropDownList1.SelectedValue);
        cmd1.Parameters.AddWithValue("@rmprc", RoomPrice.Text);
        cmd1.Parameters.AddWithValue("@rmcom", RoomComment.Text);

        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();

        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        SqlCommand cmd2 = new SqlCommand("modifyrm3", con2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cmd2.Parameters.AddWithValue("@rmidx", Request["rmidx"]);
        cmd2.Parameters.AddWithValue("@rmfri", RMFRI);
        cmd2.Parameters.AddWithValue("@rmair", RMAIR);
        cmd2.Parameters.AddWithValue("@rmbat", RMBAT);
        cmd2.Parameters.AddWithValue("@rmtv", RMTV);

        con2.Open();
        cmd2.ExecuteNonQuery();
        con2.Close();
    }
}