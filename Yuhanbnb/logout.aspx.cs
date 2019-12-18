using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        //Response.Cookies.Add(new HttpCookie("muid", "")); //세션에 사용했던 쿠키삭제
        Response.Redirect("index.aspx");
    }
}