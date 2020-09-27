<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="left" style="font-family:calibri;font-size:18px;">
    <marquee direction="up" height="600">        
    <%
        DbManager db=new DbManager();
        ResultSet rs =db.selectQuery("select * from notification");
        while(rs.next())
        {
    %>
    <p style="margin-left:10px;"><i><%=rs.getString(2)%></i></p>
    <p style="margin-left:10px;">(<%=rs.getString(3)%>)</p>
    <hr/>
    <% } %>
    </marquee>
</div>