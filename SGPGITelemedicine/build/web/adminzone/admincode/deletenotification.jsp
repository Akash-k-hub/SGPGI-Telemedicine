<%@page import="projectpackage.DbManager"%>
<%
    int id=Integer.parseInt(request.getParameter("id"));
    DbManager db=new DbManager();
    String query="delete from notification where id='"+id+"'";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Notification Deleted');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Notification is not deleted');window.location.href='../adminhome.jsp';</script>");
    }
%>