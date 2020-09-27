<%-- 
    Document   : logout
    Created on : Jul 21, 2018, 11:30:34 AM
    Author     : akash
--%>
<%
    session.invalidate();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logging you out</title>
        <script>
            function logout()
            {
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",1500);
            }
        </script>
    </head>
    <body onload="logout()" bgcolor="lightgreen">
    </body>
</html>
