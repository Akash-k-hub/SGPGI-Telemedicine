<%-- 
    Document   : adminhome
    Created on : Jul 21, 2018, 11:36:07 AM
    Author     : akash
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Home</title>
        <link href="../css/adminstyle.css" rel="stylesheet"/>
        <link href="../css/admin_menu.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="admincode/savenotification.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="color:grey;text-align:center;font-size:39.5px;"><u><i>Notification Management</i></u></h1>
                    <table border="0" style="margin:0px auto;font-family:calibri;width:50%;height:100px;font-size:25px;text-align:center;">
                        <tr>
                            <td style="color:grey;">Enter Notification :-</td>
                            <td>
                                <textarea name="notificationtext" required></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center;"><input type="submit" value="Submit" style="width:70px;height:27px;color:white;background-color:darkturquoise;border:1px solid darkturquoise;border-radius:13.5px;font-size:15px;"/></td>
                        </tr>
                    </table>
                    <br/><br/><br/>
                    <table border="0" style="width:90%;font-size:20px;font-family:calibri;text-align:center;margin:0px auto;border-radius:10px 10px 10px 10px;border:1px solid darkgrey;color:grey;">
                        <tr>
                            <th>Id</th>
                            <th>Notification</th>
                            <th>Posted Date</th>
                            <th>Delete</th>
                        </tr>
                        <tr>
                            <td colspan="4"><hr/></td>
                        </tr>
                        <%
                            DbManager db=new DbManager();
                            ResultSet rs=db.selectQuery("select * from notification");
                            while(rs.next())
                            {
                        %>
                        <tr>
                            <td><%=rs.getInt(1)%>.</td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><a href="admincode/deletenotification.jsp?id=<%=rs.getInt(1)%>" style="text-decoration:none;color:lightcoral;">Delete</a></td>
                        </tr>
                        <%  } %>
                    </table>
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<% } %>