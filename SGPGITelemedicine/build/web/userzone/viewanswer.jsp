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
        <form>
            <div id="outer">
            <%@include file="userheader.jsp" %>
            <div id="user_container">
                <table style="height:130px;width:100%;text-align: center;font-family:calibri;font-size:20px;color:grey;">
                    <tr>
                        <th>Answer</th>
                        <th>Answered by</th>
                        <th>Posted date</th>
                    </tr>
                    <%
                        int qid=Integer.parseInt(request.getParameter("qid"));
                        query="select answertext, answeredby, posteddt from answer where qid='"+qid+"'";
                        rs=db.selectQuery(query);
                        while(rs.next())
                        {
                    %>
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                    </tr>
                    <%
                        }
                    %>
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