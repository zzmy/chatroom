using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack && Request.Form.Get("adminname") != "")
        {
            DAL.ExecuteSql exec = new DAL.ExecuteSql();
            string sqlText = "select * from scott.admin where name='" + Request["adminname"] + "' and password='" + Request["password"] + "'";
            DataTable table = new DataTable();
            int flag = exec.run(table, sqlText);
            if (flag == 1)
            {
                if (table.Rows.Count > 0)
                {
                    Session["admin"] = Request["adminname"];
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Write("<font size=10 color=red>用户名或密码不正确！</font>");
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