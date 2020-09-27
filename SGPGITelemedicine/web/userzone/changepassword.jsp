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
        <form action="usercode/changepasswordcode.jsp" method="post">
            <div id="outer">
            <%@include file="userheader.jsp" %>
            <div id="user_container">
                <table border="0" style="margin:0px auto;width: 50%;height:260px;font-family:calibri;font-size:20px;">
                    <tr>
                        <td colspan="2" style="text-align: center;color:grey;font-size:40px;font-family: times new roman;">
                            <u><i>Change Password</i></u>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter old Password</td>
                        <td>
                            <input type="password" name="oldpassword" required placeholder="Old password"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter New Password</td>
                        <td>
                            <input type="password" name="newpassword" required placeholder="New password"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm New Password</td>
                        <td>
                            <input type="password" name="confirmpassword" required placeholder="Re-enter new password"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align: center;">
                            <input type="submit" value="Change Password" style="height:38px;width:150px;background-color:lightslategrey;color:white;border:1px solid lightslategrey;border-radius: 19px 19px 19px 19px;font-size:15px;"/>
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