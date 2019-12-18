using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class search : System.Web.UI.Page
{
    private string b_bbq = null;
    private string b_brkfat = null;
    private string b_paklot = null;
    private string b_pet = null;
    private string b_resair = null;
    private string b_resbat = null;
    private string b_resfri = null;
    private string b_restv = null;
    private string b_somke = null;
    private string b_wasmac = null;
    private string b_wifi = null;
    private string b_event = null;
    private string lcode = null;
    public string word = null;
    private int people;
    private int price1;
    private int price2;
    private int paging;
    public string bbq_chk, brkfat_chk, paklot_chk, pet_chk, resair_chk, resbat_chk, resfri_chk, restv_chk, somke_chk, wasmac_chk, wifi_chk, event_chk;
    public string lsel0, lsel1, lsel2, lsel3, lsel4, lsel5, lsel6, lsel7, lsel8, lsel9, lsel10;
    public string psel0, psel1, psel2, psel3, psel4, psel5;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["lcode"] != null)
        {
            if (Request["lcode"].ToString() == "1")
            {
                lsel1 = "selected";
            }
            if (Request["lcode"].ToString() == "2")
            {
                lsel2 = "selected";
            }
            if (Request["lcode"].ToString() == "3")
            {
                lsel3 = "selected";
            }
            if (Request["lcode"].ToString() == "4")
            {
                lsel4 = "selected";
            }
            if (Request["lcode"].ToString() == "5")
            {
                lsel5 = "selected";
            }
            if (Request["lcode"].ToString() == "6")
            {
                lsel6 = "selected";
            }
            if (Request["lcode"].ToString() == "7")
            {
                lsel7 = "selected";
            }
            if (Request["lcode"].ToString() == "8")
            {
                lsel8 = "selected";
            }
            if (Request["lcode"].ToString() == "9")
            {
                lsel9 = "selected";
            }
            if (Request["lcode"].ToString() == "10")
            {
                lsel10 = "selected";
            }
        }
        else
        {
            lsel0 = "selected";
        }

        if (Request["people"] != null)
        {
            if (Request["people"].ToString() == "1")
            {
                psel1 = "selected";
            }
            if (Request["people"].ToString() == "2")
            {
                psel2 = "selected";
            }
            if (Request["people"].ToString() == "3")
            {
                psel3 = "selected";
            }
            if (Request["people"].ToString() == "4")
            {
                psel4 = "selected";
            }
            if (Request["people"].ToString() == "5")
            {
                psel5 = "selected";
            }
        }
        else
        {
            psel0 = "selected";
        }

        if (!IsPostBack)
        {
            if (Request.Form["controller"] == "search_post")
            {
                lcode = Request.Form["lcode"];
                people = Convert.ToInt16(Request.Form["people"]);
                word = (Request["iword"] == null)?"테스트" : Request["iword"].ToString();
                this.restSearch(lcode, people, word);
                paging = 0;
            }
            else if (Request.QueryString["controller"] == "search_get")
            {
                lcode = Request.QueryString["lcode"];
                this.locSearch(lcode);

                if (lcode == "1") lcode = "서울";
                if (lcode == "2") lcode = "경기";
                if (lcode == "3") lcode = "인천";
                if (lcode == "4") lcode = "강원";
                if (lcode == "5") lcode = "부산";
                if (lcode == "6") lcode = "경상";
                if (lcode == "7") lcode = "전라";
                if (lcode == "8") lcode = "충청";
                if (lcode == "9") lcode = "대전";

                label2.Text = lcode + "지역의 숙소를 인기순으로 보여드립니다.";
                paging = 1;
            }
            else
            {                
                this.initSerach();
                label2.Text = "";
                paging = 2;
            }
        }
        else
        {
            b_bbq = (Request.Form["bbq"] == null) ? null : "1";
            bbq_chk = (Request.Form["bbq"] != null) ? "checked" : "";

            b_brkfat = (Request.Form["brkfat"] == null) ? null : "1";
            brkfat_chk = (Request.Form["brkfat"] != null) ? "checked" : "";

            b_paklot = (Request.Form["paklot"] == null) ? null : "1";
            paklot_chk = (Request.Form["paklot"] != null) ? "checked" : "";

            b_pet = (Request.Form["pet"] == null) ? null : "1";
            pet_chk = (Request.Form["pet"] != null) ? "checked" : "";

            b_resair = (Request.Form["resair"] == null) ? null : "1";
            resair_chk = (Request.Form["resair"] != null) ? "checked" : "";

            b_resbat = (Request.Form["resbat"] == null) ? null : "1";
            resbat_chk = (Request.Form["resbat"] != null) ? "checked" : "";

            b_resfri = (Request.Form["resfri"] == null) ? null : "1";
            resfri_chk = (Request.Form["resfri"] != null) ? "checked" : "";

            b_restv = (Request.Form["restv"] == null) ? null : "1";
            restv_chk = (Request.Form["restv"] != null) ? "checked" : "";

            b_somke = (Request.Form["somke"] == null) ? null : "1";
            somke_chk = (Request.Form["somke"] != null) ? "checked" : "";

            b_wasmac = (Request.Form["wasmac"] == null) ? null : "1";
            wasmac_chk = (Request.Form["wasmac"] != null) ? "checked" : "";

            b_wifi = (Request.Form["wifi"] == null) ? null : "1";
            wifi_chk = (Request.Form["wifi"] != null) ? "checked" : "";

            b_event = (Request.Form["event"] == null) ? null : "1";
            event_chk = (Request.Form["event"] != null) ? "checked" : "";

            lcode = (Request.Form["lcode"] == "지역") ? null : Request.Form["lcode"];
            people = Convert.ToInt16((Request.Form["people"] == "인원") ? 1 : Convert.ToInt16(Request.Form["people"]));
            word = (txtSearch.Text == "") ? null : txtSearch.Text;

            switch (DropDownList1.SelectedIndex)
            {
                case 0:
                    price1 = 0;
                    price2 = 300000;
                    break;
                case 1:
                    price1 = 10000;
                    price2 = 100000;
                    break;
                case 2:
                    price1 = 100000;
                    price2 = 200000;
                    break;
                case 3:
                    price1 = 200000;
                    price2 = 300000;
                    break;
            }

            if (b_bbq == null && b_brkfat == null && b_paklot == null && b_pet == null && b_resair == null && b_resbat == null && b_resfri == null && b_resfri == null && b_restv == null && b_somke == null && b_wasmac == null && b_wifi == null && b_event == null && word == null)
            {
                int cnt = this.initSerach();
                label2.Text = "";
                paging = 2;
            }
            else
            {           
                this.Search(b_bbq, b_brkfat, b_paklot, b_pet, b_resair, b_resbat, b_resfri, b_restv, b_somke, b_wasmac, b_wifi, b_event, lcode, people, price1, price2, word);
                paging = 3;
            }
        }
    }

    protected void OnPagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
    {
        (ListView.FindControl("DataPager1") as DataPager).SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

        if(paging == 0)
        {
            this.restSearch(lcode, people, word);
        }
        else if (paging == 1)
        {
            this.locSearch(lcode);
        }
        else if (paging == 2)
        {
            this.initSerach();
        }
        else
        {
            this.Search(b_bbq, b_brkfat, b_paklot, b_pet, b_resair, b_resbat, b_resfri, b_restv, b_somke, b_wasmac, b_wifi, b_event, lcode, people, price1, price2, word);
        }
    }

    private void Search(string b_bbq, string b_brkfat, string b_paklot, string b_pet, string b_resair, string b_resbat, string b_resfri, string b_restv, string b_somke, string b_wasmac, string b_wifi, string b_event, string lcode, int people, int price1, int price2, string word)
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.RestList", con))
            {
                cmd.Parameters.AddWithValue("@b_bbq", b_bbq);
                cmd.Parameters.AddWithValue("@b_brkfat", b_brkfat);
                cmd.Parameters.AddWithValue("@b_paklot", b_paklot);
                cmd.Parameters.AddWithValue("@b_pet", b_pet);
                cmd.Parameters.AddWithValue("@b_resair", b_resair);
                cmd.Parameters.AddWithValue("@b_resbat", b_resbat);
                cmd.Parameters.AddWithValue("@b_resfri", b_resfri);
                cmd.Parameters.AddWithValue("@b_restv", b_restv);
                cmd.Parameters.AddWithValue("@b_somke", b_somke);
                cmd.Parameters.AddWithValue("@b_wasmac", b_wasmac);
                cmd.Parameters.AddWithValue("@b_wifi", b_wifi);
                cmd.Parameters.AddWithValue("@b_event", b_event);
                cmd.Parameters.AddWithValue("@lcode", lcode);
                cmd.Parameters.AddWithValue("@people", people);
                cmd.Parameters.AddWithValue("@price1", price1);
                cmd.Parameters.AddWithValue("@price2", price2);
                cmd.Parameters.AddWithValue("@word", word);

                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    
                    this.ListView.DataSource = dt;
                    this.ListView.DataBind();

                    if (dt.Rows.Count != 0)
                    {
                        label2.Text = dt.Rows.Count + "개의 검색 결과입니다.";
                    }
                    else
                        label2.Text = "";
                }
            }
        }
    }

    private int initSerach()
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.InitList", con))
            {
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.ListView.DataSource = dt;
                    this.ListView.DataBind();

                    return dt.Rows.Count;
                }
            }
        }
    }

    private void locSearch(string lcode)
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.LocList", con))
            {
                cmd.Parameters.AddWithValue("@lcode", lcode);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.ListView.DataSource = dt;
                    this.ListView.DataBind();
                }
            }
        }
    }

    private void restSearch(string lcode, int people, string word)
    {
        using (SqlConnection con = new SqlConnection
            (ConfigurationManager.ConnectionStrings["MyAspDB"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("dbo.RestSearch", con))
            {
                cmd.Parameters.AddWithValue("@lcode", lcode);
                cmd.Parameters.AddWithValue("@people", people);
                cmd.Parameters.AddWithValue("@word", word);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    this.ListView.DataSource = dt;
                    this.ListView.DataBind();

                    if (dt.Rows.Count != 0)
                    {
                        label2.Text = dt.Rows.Count + "개의 검색 결과입니다.";
                    }
                }
            }
        }
    }
}