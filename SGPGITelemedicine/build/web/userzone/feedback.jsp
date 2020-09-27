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
        <form action="usercode/feedbackcode.jsp" method="post">
            <div id="outer">
            <%@include file="userheader.jsp" %>
            <div id="user_container">
                <table border="0" style="margin:0px auto;width:50%;font-family:calibri;color:grey;height:200px;">
                    <tr>
                        <td colspan=2 style="color:grey;text-align:center;font-size:39.5px;font-family:times new roman;">
                           <u><i> Feedback Form </i></u>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center;font-size:20px;">Enter Feedback text :</td>
                        <td>
                            <textarea name="feedbacktext" required placeholder="Enter your feedback"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td ><input type="hidden" name="pname" value="<%=pname%>"/></td>
                    </tr>
                    <tr style="text-align: center;">
                        <td colspan="2">
                            <input type="submit" value="Submit" style="height:35px;width:100px;background-color:lightcoral;border:1px solid lightcoral;color:white;font-size:17px;border-radius:17px 17px 17px 17px;"/>
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