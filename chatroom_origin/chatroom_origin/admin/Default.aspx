<%@ page language="C#" autoeventwireup="true" inherits="admin_Default, App_Web_lvzmuffc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style type="text/css">

    .top{
        margin-top: 0;
        margin-left: 0;  

    }

    .left{
        margin-top: 10px;
        margin-left: 100px;
         background-image: url(bg8.gif);
        background-repeat: no-repeat;
        height: 100%;
        width: 100%; 
        float: left; 
    }

    .bg{
        margin-left: 480px;
        margin-top: 180px;
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
<div class="top"><img src="adminlogin.png"></div>
<div class="left"><div class="bg">
    <form id="Form1" method="post" runat="server">
    <table>
    <caption><font size="5"><strong>&nbsp;Admin Login</strong></font></caption>
    <tr>&nbsp;</tr>
    <tr>&nbsp;</tr>
    <tr>&nbsp;</tr>
        <tr>
            <td style="width: 100px" align="right">
                name:
            </td>
            <td style="width: 200px">
                <input type="text" name="adminname" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px" align="right">
                password:
            </td>
            <td style="width: 200px">
                <input type="password" name="password" style="width: 155px" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 200px">
                <input type="submit" value="submit" name="submit" align="center"/>
            </td>
        </tr>
    </table>
    </form>
</div></div>

    
</body>
</html>
