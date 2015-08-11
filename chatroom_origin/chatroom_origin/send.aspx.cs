using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class send : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable table = new DataTable();
        try
        {
            string strSql = "";
            strSql = "select isallowmessage from scott.userinformation where name='";
            strSql = strSql + Session["username"].ToString() + "'";
            DAL.ExecuteSql exec = new DAL.ExecuteSql();
            exec.run(table, strSql);
            if (table.Rows[0]["isallowmessage"].ToString() == "0")
            {
                Response.Write("禁止发言");
                return;
            }
        }
        catch (Exception ex)
        {
            string str = ex.Message;
            Response.Write("你还没有登录，请先<a href='default.aspx'>登录</a>");
            return;
        }
        try
        {
            //获取用户发送的信息
            string talk = Request["sendMessage"];
            //把当前用户发送的信息追加到以前用户所有用户发送的信息里面
            string message1 = Application["message"].ToString() + Session["username"].ToString() + " say:" + talk + "<br>";
            Application.Lock();
            //把信息存储在名为message的Application对象里面
            Application["message"] = message1;
            Application.UnLock();
            //把当前的用户发送信息的日志都存储在数据库中
            WriteLog();
        }
        catch (Exception ee)
        {
            string str = ee.Message;
            Response.Write("你还没有登录，请先<a href='chatmain.aspx'>登录</a>");
        }
    }
    private void WriteLog()
    {
        try
        {
            string strSql = "select max(id) from scott.ChatRoomLog";
            DAL.ExecuteSql exec = new DAL.ExecuteSql();
            DataTable table = new DataTable();
            exec.run(table, strSql);
            int id = -1;
            string str = table.Rows[0][0].ToString();
            if (table.Rows[0][0].ToString() == "")
            {
                id = 1;
            }
            else
            {
                id = Convert.ToInt32(table.Rows[0][0].ToString()) + 1;
            }
            strSql = "insert into scott.ChatRoomLog(id,name,message,chattime,ipaddress) values("
                + id + ","
                + "'" + Session["username"].ToString() + "',"
                + "'" + Request["sendMessage"] + "',"
                + "'" + System.DateTime.Now.ToString() + "',"
                + "'" + Request.UserHostAddress.ToString() + "'"
                + ")";
            int tmp = exec.run(strSql);
        }
        catch
        {
            Response.Write("error in writelog");
        }
    }
}
 
