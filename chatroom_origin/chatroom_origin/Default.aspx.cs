using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack && Request.Form.Get("username") != "")
        {
            DAL.ExecuteSql exec = new DAL.ExecuteSql();
            string sqlText = "select * from scott.userinformation where name='" + Request["username"] + "' and password='" + Request["password"] + "'";
            DataTable table = new DataTable();
            int flag = exec.run(table, sqlText);
            if (flag == 1)
            {
                if (table.Rows.Count > 0)
                {
                    if (table.Rows[0]["isallowmessage"].ToString() == "1")
                    {
                        Session["username"] = Request["username"];
                        Application.Lock();
                        Application["message"] = Application["message"] + "welcom " + Session["username"] + "<br>";
                        Application.UnLock();
                        Response.Redirect("chatRoom.html");
                    }
                    else
                    {
                        Response.Write("<font size=10 color=red>该用户禁止发送信息</font>");
                    }
                }
                else
                {
                    Response.Write("<font size=10 color=red>用户名或密码不正确！请注册！</font>");
                }
            }
            else
            {
                Response.Write("<font size=10 color=red>" + exec.ErrorMessage + "</font>");
            }
        }
        else
        {
            Response.Write("<font size=10 color=red>请输入用户名</font>");
        }
    }

}