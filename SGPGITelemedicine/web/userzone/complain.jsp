<%-- 
    Document   : userhome
    Created on : Jul 21, 2018, 11:05:24 AM
    Author     : akash
--%>
<%
    if(session.getAttribute("userid")==null)
    {
    response.sendRedirect("../index.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home Page</title>
        <link href="../css/userstyle.css" rel="stylesheet"/>
        <link href="../css/user_menu.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="usercode/complaincode.jsp" method="post">
            <div id="outer">
            <%@include file="userheader.jsp" %>
            <div id="user_container">
                <br/>
                <table style="margin-left:20px;">
                    <tr>
                        <td colspan="2" style="color:grey;font-size:28px;">
                            <i>Write your complaints here :-</i>
                        </td>
                    </tr>
                </table>
                <table style="font-family:calibri;margin:0px auto;width:40%;height:250px;text-align:center;font-size:20px;color:grey;">
                    <tr>
                        <td><input type="hidden" name="pname" value="<%=pname%>"/></td>
                    </tr>
                    <tr>
                        <td>Subject :</td>
                        <td>
                            <textarea name="subject" required placeholder="Topic of complaint"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>Complaint :</td>
                        <td>
                            <textarea name="complaintext" placeholder="Place your complaint" required></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;">
                            <input type="submit" value="SUBMIT" style="height:30px;width:100px;font-size:17px;background-color:darkcyan;color:white;border:1px solid darkcyan;border-radius:15px 15px 15px 15px;"/>
                        </td>
                    </tr>
                </table>
            </div>
            <%@include file="userfooter.jsp" %> 
         </div>
        </form>
    </body>
</html>
<%
    }
%>