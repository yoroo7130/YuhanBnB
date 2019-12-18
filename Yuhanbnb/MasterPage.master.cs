using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string muid;
    public string mcode;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["muid"] != null)
        {
            muid = Session["muid"].ToString();
            mcode = Session["mcode"].ToString();
            MultiView1.ActiveViewIndex = 1;
            MultiView3.ActiveViewIndex = 0;
        }
        else
        {
            MultiView1.ActiveViewIndex = 0;
            MultiView3.ActiveViewIndex = 1;
        }

        if (Convert.ToString(Session["mcode"]) == "2")
        {
            MultiView2.ActiveViewIndex = 0;
        }
        else
        {
            MultiView2.ActiveViewIndex = 1;
        }
    }
}
