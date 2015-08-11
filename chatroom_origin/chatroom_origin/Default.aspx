<%@ page language="C#" autoeventwireup="true" inherits="_Default, App_Web_2tfhr3jk" %>

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
<div class="top"><img src="login_head.png"></div>
<div class="bg">
      <form id="Form1" method="post" runat="server">
     
    <table style="font-family: Times, TimesNR, 'New Century Schoolbook', Georgia,'New York', serif">
    <caption><font size="5"><strong>&nbsp;User Login</strong></font></caption>
    <tr>&nbsp;</tr>
    <tr>&nbsp;</tr>
    <tr>&nbsp;</tr>
        <tr>
            <td style="width: 100px" align="right">
                name:
            </td>
            <td style="width: 200px">
                <input type="text" name="username" />
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
                <input type="submit" value="submit" name="submit" />
                <input type="button" value="sign in>>" name="button" onclick="Redir();" />
            </td>
        </tr>
    </table>
  
    </form>
</div>
  
    <script language="javascript" type="text/javascript">
        function Redir() {
            parent.location.href = "RegisterPage.aspx";
        }
    </script>
</body>

</html>
