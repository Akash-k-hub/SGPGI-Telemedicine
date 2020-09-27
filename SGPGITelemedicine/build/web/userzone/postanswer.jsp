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
        <form action="usercode/postanswercode.jsp" method="post">
            <div id="outer">
            <%@include file="userheader.jsp" %>
            <div id="user_container">
                <br/><br/><br/><br/>
                <table border="0" style="font-size:20px;text-align:center;width:50%;height:180px;margin:0px auto;border:1px solid darkgrey;border-radius:12px;">
                    <tr>
                        <td colspan="2" style="color:grey;text-align:center;font-size:39.5px;">
                            <u><i>Discussion Forum</i></u>
                        </td>
                    </tr>
                    <tr>
                        <td style="font-family:calibri;">Enter your answer</td>
                        <td>
                            <textarea name="answertext" required></textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="text-align:center;"><input type="submit" value="Post answer" style="height:30px;width:100px;font-size:14px;background-color:lightskyblue;border:1px solid lightskyblue;color:white;border-radius:12px;"/></td>
                    </tr>
                    <tr>
                        <td>
                            <input type="hidden" name="pname" value="<%=pname%>"/>
                            <%
                                int qid=Integer.parseInt(request.getParameter("qid"));
                            %>
                            <input type="hidden" name="qid" value="<%=qid%>"/>
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