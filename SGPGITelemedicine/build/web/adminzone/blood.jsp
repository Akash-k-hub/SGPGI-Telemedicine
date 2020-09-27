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
        <form action="admincode/findblood.jsp" method="post">
            <div id="a_outer">
                <%@include file="adminheader.jsp" %>
                <div id="a_container">
                    <h1 style="text-align:center;color:grey;font-size:39.5px;"><u><i>Blood Unit Management</i></u></h1>
                    <br/><br/><br/>
                    <table style="font-family:calibri;margin:0px auto;width:55%;height:150px;font-size:20px;text-align:center;color:grey;border:1px solid darkgray;border-radius:10px;">
                        <tr>
                            <td>Blood Group</td>
                            <td>
                                <select name="bloodgroup" style="color:grey;font-family:calibri;">
                                    <option value="">--SELECT--</option>
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
                            <td>Available Units</td>
                            <td>
                                <input type="text" name="availableunits" required placeholder="No. of units"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Blood Bank Name</td>
                            <td>
                                <input type="text" name="bloodbankname" required placeholder="Name of the bank"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align:center;">
                                <input type="submit" value="Upload" style="font-size:18px;color:white;text-align:center;height:30px;width:100px;background-color:dodgerblue;border:1px solid dodgerblue;border-radius:12px;"/>
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