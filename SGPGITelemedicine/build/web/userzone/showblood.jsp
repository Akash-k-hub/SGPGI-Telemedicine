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
                <h1 style="text-align:center;font-size:39.5px;color:grey;">Blood Availability</h1>
                <br/><br/>
                <table style="font-family:calibri;width:50%;height:70px;margin:0px auto;text-align: center;color:grey;font-size:20px;">
                    <tr>
                        <td>Select blood Group</td>
                        <td>
                            <select name="bloodgroup">
                                <option value="">SELECT</option>
                                <option value="O+">O+</option>
                                <option value="O-">O-</option>
                                <option value="A+">A+</option>
                                <option value="A-">A-</option>
                                <option value="B+">B+</option>
                                <option value="B-">B-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><br/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Get Details" style="font-size:18px;color:white;text-align:center;height:38px;width:120px;background-color:dodgerblue;border:1px solid dodgerblue;border-radius:12px;"/></td>
                    </tr>
                </table>
                <br/><br/><br/>
                <%
                    String bloodgroup=request.getParameter("bloodgroup");
                    String q="select * from bloodavailability where bloodgroup='"+bloodgroup+"'";
                    ResultSet r=db.selectQuery(q);
                    int i=1;
                    while(r.next())
                    {
                %>
                <table style="font-family:calibri;margin:5px auto; width:95%;font-size:20px;border-radius:10px;border:1px solid darkgrey;text-align:center;">
                    <tr>
                        <td><%=i%>.</td>
                        <td><%=r.getString(3)%> units</td>
                        <td><%=r.getString(4)%></td>
                    </tr>
                </table>
                <%
                i++;
                    }
                %>
            </div>
            <%@include file="userfooter.jsp" %> 
         </div>
        </form>
    </body>
</html>
<%
    }
%>