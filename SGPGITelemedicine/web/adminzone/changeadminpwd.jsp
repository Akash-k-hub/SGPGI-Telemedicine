<%-- 
    Document   : adminhome
    Created on : Jul 21, 2018, 11:36:07 AM
    Author     : akash
--%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
        <link href="../css/adminstyle.css" rel="stylesheet"/>
        <link href="../css/admin_menu.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="admincode/changeadminpwdcode.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="color:grey;text-align:center;font-size:39.5px;"><u><i>Change Password</i></u></h1>
                    <br/>
                    <table border="0" style="color:grey;width:55%;height:200px;text-align:center;font-family:calibri;margin:0px auto;font-size:20px;border:1px solid darkgrey;border-radius:20px 20px 20px 20px;">
                        <tr>
                            <td>Enter Old Password :</td>
                            <td>
                                <input type="password" name="oldpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter New Password :</td>
                            <td>
                                <input type="password" name="newpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm New Password :</td>
                            <td>
                                <input type="password" name="confirmpassword" required/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center;">
                                <input type="submit" value="Change Password" style="height:35px;width:150px;font-size:16px;background-color:dodgerblue;border:1px solid dodgerblue;border-radius:13px;color:white;"/>
                            </td>
                        </tr>
                    </table>
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<% } %>