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
                    <h1 style="text-align:center;font-size:39.5px;color:grey;"><u><i>Complain Management</i></u></h1>
                    <br/><br/><br/>
                    <table border="0" style="text-align:center;width:100%;font-size:20px;font-family:calibri;border:1px solid darkgrey;color:grey;border-radius:15px;">
                        <tr>
                            <th>S No.</th>
                            <th>Name</th>
                            <th>Subject</th>
                            <th>Complain Text</th>
                            <th>Complain Date</th>
                            <th>Delete</th>
                        </tr>
                        <tr>
                            <td colspan="6"><hr/></td>
                        </tr>
                        <%
                            String query="select * from complain";
                            DbManager db=new DbManager();
                            ResultSet rs=db.selectQuery(query);
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
                            <td><a href="admincode/deletecomplain.jsp?id=<%=rs.getString(1)%>" style="text-decoration:none;color:lightcoral;">Delete</a></td>
                            
                        </tr>
                        <%
                                n++; }
                        %>
                    </table>
                </div>
                <%@include file="adminfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<% } %>