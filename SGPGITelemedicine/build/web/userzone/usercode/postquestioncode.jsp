<%@page import="projectpackage.DbManager"%>
<%
    String pname=request.getParameter("pname");
    String questiontext=request.getParameter("questiontext");
    DbManager db=new DbManager();
    String posteddt=db.getDate();
    String query="insert into question(questiontext,postedby,posteddt) values('"+questiontext+"','"+pname+"','"+posteddt+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Question is posted');window.location.href='../postquestion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Question is not posted');window.location.href='../postquestion.jsp';</script>");
    }
%>