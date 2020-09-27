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
    </head>
    <body onload="slider()">
        <form>
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>
