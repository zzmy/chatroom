using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OracleClient;

public partial class admin_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("default.aspx", false);
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("userControl.aspx", false);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string strConn = "Data Source=orcl;User Id=chatroom;Password=chatroom;Integrated Security=no;";
            OracleConnection oleDbConnection = new OracleConnection(strConn);
            oleDbConnection.Open();
            string strSql;
            if (this.name.Text.ToString() == "")
            {
                strSql = "select * from scott.ChatRoomLog order by id desc";
            }
            else
            {
                strSql = "select * from scott.chatroomlog where name='" + this.name.Text.ToString() + "' order by id";
            }
            System.Data.OracleClient.OracleCommand oleDbCommand = new System.Data.OracleClient.OracleCommand();
            oleDbCommand.CommandText = strSql;
            oleDbCommand.Connection = oleDbConnection;
            System.Data.OracleClient.OracleDataAdapter oleDbDataAdapter = new System.Data.OracleClient.OracleDataAdapter(oleDbCommand);
            DataTable table = new DataTable();
            oleDbDataAdapter.Fill(table);
            oleDbConnection.Close();
            this.GridView1.DataSource = table.DefaultView;
            this.GridView1.DataBind();

        }
        catch
        {
        }
    }
}