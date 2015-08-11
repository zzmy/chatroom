using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_userControl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("default.aspx", false);
        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin.aspx", false);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string sqlText = "";
        if (this.TextBox1.Text.ToString() == "")
        {
            sqlText = "select name,isonline,isallowmessage from scott.userinformation";
        }
        else
        {
            sqlText = "select name,isonline,isallowmessage from scott.userinformation where name='" + this.TextBox1.Text.ToString() + "'";
        }
        DAL.ExecuteSql exec = new DAL.ExecuteSql();
        DataTable table = new DataTable();
        int flag = exec.run(table, sqlText);
        if (flag == 1)
        {
            if (table.Rows.Count > 0)
            {
                this.GridView1.DataSource = table.DefaultView;
                this.GridView1.DataBind();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text.ToString() != "")
        {
            string sqlText = "update scott.userinformation set isallowmessage = '0' where name='" + this.TextBox1.Text.ToString() + "'";
            DAL.ExecuteSql exec = new DAL.ExecuteSql();
            int flag = exec.run(sqlText);
            if (flag == 1)
            {
                this.DropDownList2.SelectedValue = "不可以";
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (this.TextBox1.Text.ToString() != "")
        {
            string sqlText = "update scott.userinformation set isallowmessage = '1' where name='" + this.TextBox1.Text.ToString() + "'";
            DAL.ExecuteSql exec = new DAL.ExecuteSql();
            int flag = exec.run(sqlText);
            if (flag == 1)
            {
                this.DropDownList2.SelectedValue = "可以";
            }
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.TextBox1.Text = this.GridView1.SelectedRow.Cells[1].Text.ToString();
        this.DropDownList1.SelectedValue = this.GridView1.SelectedRow.Cells[2].Text.ToString();
        this.DropDownList2.SelectedValue = this.GridView1.SelectedRow.Cells[3].Text.ToString();
    }
}