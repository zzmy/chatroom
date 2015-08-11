using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class RegisterPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string name = this.txt_name.Value.ToString();
            if (name != "")
            {
                DAL.ExecuteSql exec = new DAL.ExecuteSql();
                DataTable table = new DataTable();
                string sqlText = "select * from scott.userinformation where name = '";
                sqlText = sqlText + this.txt_name.Value.ToString() + "'";
                exec.run(table, sqlText);
                if (table.Rows.Count > 0)
                {
                    this.Response.Write("已经存在该用户名！");
                }
                else
                {
                    exec = new DAL.ExecuteSql();
                    sqlText = "insert into scott.userinformation values ("
                        + "'" + this.txt_name.Value.ToString() + "',"
                        + "'" + this.txt_password.Text.ToString() + "',"
                        + "'" + this.txt_email.Text.ToString() + "',"
                        + "'" + this.txt_realname.Text.ToString() + "',"
                        + "'" + this.txt_age.Text.ToString() + "',"
                        + "'" + this.txt_sex.Text.ToString() + "',"
                        + "'1', '1') ";
                    int flag = exec.run(sqlText);
                    if (flag == 1)
                    {
                        Session["username"] = this.txt_name.Value.ToString();
                        Application.Lock();
                        Application["message"] = Application["message"] + "welcom " + Session["username"] + "<br>";
                        Application.UnLock();
                        Response.Redirect("/chatRoom.html", false);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            string exception = ex.Message;
            string stack = ex.StackTrace;
        }
    }
}