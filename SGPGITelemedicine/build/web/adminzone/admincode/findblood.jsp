<%@page import="projectpackage.DbManager"%>
<%
    String bloodgroup=request.getParameter("bloodgroup");
    String availableunits=request.getParameter("availableunits");
    String bloodbankname=request.getParameter("bloodbankname");
    DbManager db=new DbManager();
    String query="insert into bloodavailability(bloodgroup,availableunits,bloodbankname) values('"+bloodgroup+"','"+availableunits+"','"+bloodbankname+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Data Uploaded');window.location.href='../blood.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Data could not be Uploaded');window.location.href='../blood.jsp';</script>");
    }
%>  