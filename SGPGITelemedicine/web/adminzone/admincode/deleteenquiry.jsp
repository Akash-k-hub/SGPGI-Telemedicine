<%@page import="projectpackage.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from enquiry where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Enquiry Deleted');window.location.href='../enquirymgmt.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Enquiry is not Deleted');window.location.href='../enquirymgmt.jsp';</script>");
    }
%>