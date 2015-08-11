using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class display : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("你还没有登录，请先<a href='default.aspx'>登录</a>");
        }
        else
        {
            Response.Write(Application["message"]);
        }
    }

}