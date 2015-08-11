<%@ page language="C#" autoeventwireup="true" inherits="admin_userControl, App_Web_lvzmuffc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>用户管理</title>
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
 <div class="top"><img src="usercontrol_head.png"></div>
    <div class="left">
    <form id="form1" runat="server">
    <div align="center">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <table>
            <tr>
                <td colspan="2" align="center">
                用户管理
                </td>
            </tr>
            <tr>
                <td align="right">
                用户名
                </td>
                <td align="left"><asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFF80"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Selected="True" Value="在线">
                        在线
                    </asp:ListItem>
                    <asp:ListItem Value="不在线">
                        不在线
                    </asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td align="right">
                </td>
                <td align="left">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem Selected="True" Value="可以">可以</asp:ListItem>
                    <asp:ListItem Value="不可以">不可以</asp:ListItem>
                    </asp:DropDownList>&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan=2 align="center">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="查询" />
                    <asp:Button ID="Button1" runat="server" Text="禁止发言" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="允许发言" OnClick="Button2_Click" />                <td>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="日志 >>" />
                </td>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="用户名" />
                                <asp:BoundField DataField="isonline" HeaderText="是否在线" />
                                <asp:BoundField DataField="isallowmessage" HeaderText="是否允许发言" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="true" ForeColor="#333333" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <AlternatingRowStyle BackColor="White" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                </td>
            </tr>
        </table>
        </ContentTemplate>
        </asp:UpdatePanel>
    
    </div>
    </form>
    </div>
    
</body>
</html>