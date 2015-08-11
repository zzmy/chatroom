using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class ServerPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request["name"];
        if (name != null)
        {
            DAL.ExecuteSql exec = new DAL.ExecuteSql();
            DataTable table = new DataTable();
            string sqlText = "select * from scott.userinformation where name = '" + name + "'";
            exec.run(table, sqlText);
            Response.Clear();
            if (table.Rows.Count > 0)
            {
                //Response.Write("已经存在该用户名！");
                this.Response.Write("已经存在该用户名！");
                this.Response.End();
            }
            else
            {
                this.Response.Write("");
                this.Response.End();
            }

        }
        else
        {
            this.Response.Write("");
            this.Response.End();
        }
    }
}
