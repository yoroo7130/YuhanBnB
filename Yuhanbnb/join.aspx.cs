using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class join : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            List<string> mList = new List<string>();

            for (int i = 1; i <= 12; i++)
            {
                string month = i + "월";
                mList.Add(month);
            }
            ddlMonth.DataSource = mList;
            ddlMonth.DataBind();

            List<string> dList = new List<string>();

            for (int i = 1; i <= 31; i++)
            {
                string day = i + "일";
                dList.Add(day);
            }
            ddlDay.DataSource = dList;
            ddlDay.DataBind();

            List<string> yList = new List<string>();

            for (int i = 2019; i >= 1900; i--)
            {
                string year = i + "년";
                yList.Add(year);
            }
            ddlYear.DataSource = yList;
            ddlYear.DataBind();
        }
    }

    protected void txtPwd_PreRender(object sender, EventArgs e)
    {
        txtPwd.Attributes.Add("value", txtPwd.Text);
    }

    protected void txtPwdChk_PreRender(object sender, EventArgs e)
    {
        txtPwdChk.Attributes.Add("value", txtPwdChk.Text);
    }

    protected void DdlMail_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlMail.Items[0].Selected)
        {
            txtMyMail.Text = "";
            txtMyMail.Focus();
        }
        else if (ddlMail.Items[1].Selected)
        {
            txtMyMail.Text = ddlMail.SelectedItem.Text;
        }
        else if (ddlMail.Items[2].Selected)
        {
            txtMyMail.Text = ddlMail.SelectedItem.Text;
        }
        else if (ddlMail.Items[3].Selected)
        {
            txtMyMail.Text = ddlMail.SelectedItem.Text;
        }
        else if (ddlMail.Items[4].Selected)
        {
            txtMyMail.Text = ddlMail.SelectedItem.Text;
        }
        else
            txtMyMail.Text = ddlMail.SelectedItem.Text;
    }

    protected void btnJoin_Click(object sender, EventArgs e)
    {
        string id = txtID.Text;
        string pwd = txtPwd.Text;
        string name = txtName.Text;
        string email = txtMailID.Text + "@" + txtMyMail.Text;

        string year = ddlYear.SelectedItem.Text;
        string month = ddlMonth.SelectedItem.Text;
        string day = ddlDay.SelectedItem.Text;

        string birthday = year.Replace("년", "") + "-" + month.Replace("월", "")
            + "-" + day.Replace("일", "");

        string mcode = (DropDownList1.SelectedItem.Value);

        Member member = new Member();
        member.InsertMember(id, pwd, name, email, birthday, mcode);

        string script = "<script type = 'text/javascript'>alert('회원가입이 완료되었습니다.');location.href = 'login.aspx';</script>";
        Response.Write(script);
        Response.End();
    }
}