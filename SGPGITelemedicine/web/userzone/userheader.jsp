<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<div id="user_menu">
    <ul>
        <li><a href="userhome.jsp">Home |</a></li>
        <li><a href="postquestion.jsp">Discussion |</a></li>
        <li><a href="complain.jsp">Complain |</a></li>
        <li><a href="feedback.jsp">Feedback |</a></li>
        <li><a href="changepassword.jsp">Change Password |</a></li>
        <li><a href="showblood.jsp">Find Blood |</a></li>
        <li><a href="logout.jsp">Logout</a></li>
    </ul>
</div>
<div id="user_header">
    <div id="user_logo">
        <img src="../images/logo.png" width="150" height="150"/>
    </div>
    <div id="sitetitle" style="font-family:Times new roman;">
        <i>SGPGI&nbsp;&nbsp; TeleMedicine</i>
    </div>
</div>
<div id="info">
    <%
        DbManager db=new DbManager();
    %>
    <div id="name">
        <%
            String userid=session.getAttribute("userid").toString();
            String query="select patientname from patientinfo where contactno='"+userid+"'";
            ResultSet rs=db.selectQuery(query);
            String pname="";
            if(rs.next()==true)
            {
                pname=rs.getString(1);
            }
        %>
        Hi, <%=pname%>
        <hr/>
    </div>
        <div id="date">
        <%
            String dt=db.getDate();
        %>
        Date : <%=dt%>
        <hr/>
    </div>
</div>