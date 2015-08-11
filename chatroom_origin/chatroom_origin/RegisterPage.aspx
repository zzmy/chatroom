<%@ page language="C#" autoeventwireup="true" inherits="RegisterPage, App_Web_2tfhr3jk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <style type="text/css">
    body{
        background-image: url(bg7.png);
        background-repeat: no-repeat;
        height: 100%;
        width: 100%;    
    }

   .top{
        margin-top: 0;
        margin-left: 0;  

    }

    .bg{
        margin-left: 260px;
        margin-top:190px;
        padding: auto;
        filter:alpha(opacity=50);   
       -moz-opacity:0.5;
       opacity: 0.5;
       width: 320px;
            background-color: white;
            height: 230px; 
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
<div class="top"><img src="register_head.png"></div>
<div class="bg">
    <form id="form1" runat="server">
    <div align="center">
        <table>
        <caption><font size="5"><strong>&nbsp;Register</strong></font></caption>
        <tr>&nbsp;</tr>
            <tr>
                <td style="width:100px" align="right">
                    *name:</td>
                <td style="width:100px">
                    <input id="txt_name" name="txt_name" type="text" runat="server" onchange="checkName();" />
                </td>
                <td style="width:100px" align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="用户名不能为空!"
                        ControlToValidate="txt_name" Width="140px" Font-Size="X-Small">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="right">
                    *password:
                </td>
                <td style="width:100px">
                    <asp:TextBox ID="txt_password" runat="server" TextMode="Password" Width="149px"></asp:TextBox>
                </td>
                <td style="width: 100px" align="left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="密码不能为空!"
                        ControlToValidate="txt_password" Width="138px" Font-Size="X-Small">
                    </asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 100px" align="right">
                    email:
                </td>
                <td style="width:100px">
                    <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                </td>
                <td style="width:100px" align="left">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="邮 件 格 式 不 正 确 !"
                        ControlToValidate="txt_email" SetFocusOnError="True" ValidationExpression="w+([-+.']\w+)*@\w+([-.]\w+) *\.\w+([-.]\w+)*"
                        Width="134px" Font-Size="X-Small">
                    </asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width:100px" align="right">
                 realname:</td>
                 <td style="width:100px">
                    <asp:TextBox ID="txt_realname" runat="server"></asp:TextBox>
                 </td>
                 <td style="width:100px">
                 </td>
            </tr>
            <tr>
                <td style="width:100px" align="right">
                    age:</td>
                <td style="width:100px">
                    <asp:TextBox ID="txt_age" runat="server"></asp:TextBox>
                </td>
                <td style="width:100px" align="left">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ErrorMessage="需要数字！" ControlToValidate="txt_age" 
                        ValidationExpression="^[0-9]*[1-9][0-9]*$" Font-Size="X-Small"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width:100px" align="right">
                    sex:</td>
                <td style="width:100px">
                    <asp:TextBox ID="txt_sex" runat="server"></asp:TextBox></td>
                <td style="width:100px" align="left">
                </td>
            </tr>
            <tr>
                <td style="width:100px">
                </td>
                <td style="width:100px" align="left">
                    <asp:Button ID="Button1" runat="server" Text="注 册" onclick="Button1_Click" 
                        Width="49px" /></td>
            </tr>
        </table>
        </div>
    </form>
</div>
    
    <script language="javascript" type="text/javascript">
        var xmlHttp = false;
        function checkName() {
            if (window.ActiveXObject) {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            else if (window.XMLHttpRequest) {
                xmlHttp = new XMLHttpRequest();
            }

            if (!xmlHttp && typeof XMLHttpRequest != 'undefined') {
                xmlHttp = new XMLHttpRequest();
            }
            var name = document.getElementById("txt_name").value;
            if (name == "") {
                alert("用户名为空!");
                return;
            }
            //var URL = "../ChatRoom/ServerPage.aspx?name=" + escape(name);
            var URL = "/ServerPage.aspx?name=" + escape(name);
            xmlHttp.open("GET", URL, true);
            xmlHttp.onreadystatechange = updatePage;
            xmlHttp.send(null);
        }

        function updatePage() {
            if (xmlHttp.readyState == 4)
            {
                var response = xmlHttp.responseText;
                if (response != "") {
                    alert(response);
                }
            }
        }
    </script>
</body>
</html>