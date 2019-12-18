using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Room2 : System.Web.UI.Page
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

        residx = Request["residx"];

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
        SqlCommand cmd = new SqlCommand("RoomInsert8", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@rmimg1", imageUrl1);
        cmd.Parameters.AddWithValue("@rmimg2", imageUrl2);
        cmd.Parameters.AddWithValue("@rmimg3", imageUrl3);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();



        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        SqlCommand cmd1 = new SqlCommand("RoomInsert10", con1);
        cmd1.CommandType = CommandType.StoredProcedure;

        cmd1.Parameters.AddWithValue("@rmname", RoomName.Text);
        cmd1.Parameters.AddWithValue("@rmpeo", DropDownList1.SelectedValue);
        cmd1.Parameters.AddWithValue("@rmprc", RoomPrice.Text);
        cmd1.Parameters.AddWithValue("@rmcom", RoomComment.Text);
        cmd1.Parameters.AddWithValue("@residx", residx);

        con1.Open();
        cmd1.ExecuteNonQuery();
        con1.Close();

        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString);
        SqlCommand cmd2 = new SqlCommand("RoomInsert9", con2);
        cmd2.CommandType = CommandType.StoredProcedure;

        cmd2.Parameters.AddWithValue("@rmfri", RMFRI);
        cmd2.Parameters.AddWithValue("@rmair", RMAIR);
        cmd2.Parameters.AddWithValue("@rmbat", RMBAT);
        cmd2.Parameters.AddWithValue("@rmtv", RMTV);

        con2.Open();
        cmd2.ExecuteNonQuery();
        con2.Close();

    }
}