<%@page import="projectpackage.DbManager"%>
<%
    String pname=request.getParameter("pname");
    String subject=request.getParameter("subject");
    String complaintext=request.getParameter("complaintext");
    DbManager db=new DbManager();
    String complaindt=db.getDate();
    String query="insert into complain(name,subject,complaintext,complaindt) values('"+pname+"','"+subject+"','"+complaintext+"','"+complaindt+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Complaint filed successfully');window.location.href='../complain.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Complaint didn't got filed');window.location.href='../complain.jsp';</script>");
    }
%>