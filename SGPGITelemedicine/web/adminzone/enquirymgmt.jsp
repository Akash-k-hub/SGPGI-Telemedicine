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
        <title>Admin Home</title>
        <link href="../css/adminstyle.css" rel="stylesheet"/>
        <link href="../css/admin_menu.css" rel="stylesheet"/>
    </head>
    <body>
        <form>
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="text-align:center;color:grey;font-size:39.5px;"><u><i>Enquiry Management</i></u></h1>
                    <br/>
                    <table border="0" style="text-align:center;margin:0px auto;width:102%;font-size:19.5px;;border:1px solid darkgrey;color:grey;border-radius:15px;font-family:calibri;">
                        <tr>
                            <th>S No</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact No</th>
                            <th>E-mail Address</th>
                            <th>Enquiry Text</th>
                            <th>Enquiry Date</th>
                            <th>Delete</th>
                        </tr>
                        <tr>
                            <td colspan="9"><hr/></td>
                        </tr>
                        <%
                            String q="Select * from enquiry";
                            DbManager db=new DbManager();
                            ResultSet rs=db.selectQuery(q);
                            int n=1;
                            while(rs.next())
                            {
                            
                        %>
                        <tr>
                            <td><%=n%>.</td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><%=rs.getString(4)%></td>
                            <td><%=rs.getString(5)%></td>
                            <td><%=rs.getString(6)%></td>
                            <td><%=rs.getString(7)%></td>
                            <td><%=rs.getString(8)%></td>
                            <td><a href="admincode/deleteenquiry.jsp?id=<%=rs.getInt(1)%>" style="text-decoration:none;color:lightcoral;">Delete</a></td>
                        </tr>
                        <% n++;
                            }
                        %>
                    </table>
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<% } %>