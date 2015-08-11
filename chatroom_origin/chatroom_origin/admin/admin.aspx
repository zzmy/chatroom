<%@ page language="C#" autoeventwireup="true" inherits="admin_admin, App_Web_lvzmuffc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head runat="server">
    <title>查看聊天日志</title>

     <style type="text/css">

    .top{
        margin-top: 0;
        margin-left: 0;  

    }

    .left{
        margin-top: 10px;
        margin-left: 100px;
         background-image: url(bg8.gif);
        background-repeat: repeat-y;
        height: 100%;
        width: 100%; 
        float: left; 
    }

    .bg{
        margin-left: 500px;
        margin-top: 220px;
        padding: auto;
        filter:alpha(opacity=50);   
-moz-opacity:0.5;
opacity: 0.5;
width: 280px;
            background-color: white;
            height: 160px; 
            box-shadow: 3px 3px 4px #000;
            -moz-box-shadow: 3px 3px 4px #000;
            -webkit-box-shadow: 3px 3px 4px #000;
            filter: progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#000000');
            -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135, Color='#000000')";
             -moz-border-radius: 20px;
            -webkit-border-radius: 20px;
            border-radius: 20px;       
float: left;  

    }
</style>
</head>
<body>
    <div class="top"><img src="admin_head.png"></div>
    <div class="left">
        <form id="form1" runat="server">
    <div align="center">
        <table>
            <tr>
                <td colspan="4" align="center">
                    <span style=""><span style="color: #1E90FF">查看聊天日志</span></span>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="right">
                    姓名
                </td>
                <td style="width: 100px" align="right">
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                </td>
                <td style="width: 100px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="查 询" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="权限 >>" />
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333"
                        GridLines="None" Width="390px">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
    </div>
    
</body>
</html>
