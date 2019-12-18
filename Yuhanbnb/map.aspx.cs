using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class map : System.Web.UI.Page
{
    public string addr = "부산광역시";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        addr = "경기도 부천시 경인로 590";
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        addr = "인천광역시 부평구";
    }
}