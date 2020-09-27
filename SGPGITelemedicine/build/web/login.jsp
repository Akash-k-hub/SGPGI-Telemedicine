<%-- 
    Document   : index
    Created on : Jul 15, 2018, 8:36:37 PM
    Author     : akash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SGPGI Telemedicine</title>
        <link href="css/generalstyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/menucss.css" rel="stylesheet" type="text/css"/>
        <script src="js/headscript.js" type="text/javascript"></script>
        <style>
            /*body
            {
                background-image:url("images/fi.png");
                background-repeat:no-repeat;
                background-attachment:fixed;
                background-position:center;
            }*/
        </style>
    </head>
    <body onload="slider()">
        <form action="generalcode/logincode.jsp" method="post">
                <div id="wrapper">
                    <%@include file="generalmaster/head.jsp" %>
                    <div id="container">
                        <%@include file="generalmaster/left.jsp" %>
                        <div id="main">
                            <table style="margin-top:80px;margin-left:150px;width:50%;height:19%;font-family:calibri;border-radius:9px 9px 0px 0px;border:1px solid darkgrey;">
                                <tr>
                                    <td colspan="2" style="font-size:25px;font-family:Times New Roman;color:darkcyan;text-align:center;">
                                        <u><b>Log-in</b></u>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align:center;">User Id :</td>
                                    <td><input type="text" required name="userid" placeholder="Enter user id"/></td>
                                </tr>
                                <tr>
                                    <td style="text-align:center;">Password :</td>
                                    <td><input type="password" required name="password" placeholder="Enter password"/></td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="text-align:center;"><input type="submit" value="Log in" style="width:70px;height:25px;border:1px blue;border-radius:3px;background-color:darkcyan;color:white;"/></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                        <%@include file="generalmaster/foot.jsp" %>
                </div>
        </form>
    </body>
</html>
