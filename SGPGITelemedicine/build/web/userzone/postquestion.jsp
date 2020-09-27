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
        <form action="usercode/postquestioncode.jsp" method="post">
        <div id="outer">
            <%@include file="userheader.jsp" %>
              <div id="user_container">
                <table style="margin:0px auto;width:50%;height:225px;">
                    <tr>
                        <td colspan="2" style="text-align:center;font-size:39.5px;color:grey;">
                            <u><i>Discussion Forum</i></u>
                        </td>
                    </tr>
                    <tr>
                        <td style="color:grey;font-family:calibri;font-size:20px;">Enter the question :</td>
                        <td>
                            <textarea name="questiontext" required placeholder="Enter your problem"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;">
                            <input type="submit" value="Post" style="width:70px;height:30px;font-size:17px;background-color:dodgerblue;border:1px solid dodgerblue;color:white;border-radius:15px 15px 15px 15px;"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="hidden" value="<%=pname%>" name="pname"/>
                        </td>
                    </tr>
                </table>
                        <br/><br/>
                        <table style="width:100%;font-size:20px;text-align:center;border:1px solid darkgrey;border-radius:10px 10px 10px 10px;font-family:calibri;color:grey;">
                            <tr>
                                <th>Q.id</th>
                                <th>Question</th>
                                <th>Posted by</th>
                                <th>Posted dt</th>
                                <th>Post answer</th>
                                <th>Give answer</th>
                            </tr>
                            <tr>
                                <td colspan='6'><hr/></td>
                            </tr>
                            <%
                                rs=db.selectQuery("select * from question");
                                while(rs.next())
                                {
                            %>
                            <tr>
                                <td><%=rs.getInt(1)%>.</td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td><%=rs.getString(4)%></td>
                                <td><a href="postanswer.jsp?qid=<%=rs.getInt(1)%>" style="text-decoration:none;color:lightseagreen;">Post</a></td>
                                <td><a href="viewanswer.jsp?qid=<%=rs.getInt(1)%>" style="text-decoration:none;color:green;">View</a></td>
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