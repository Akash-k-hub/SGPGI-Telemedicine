<%@page import="projectpackage.DbManager"%>
<%
    String pname=request.getParameter("pname");
    String feedbacktext=request.getParameter("feedbacktext");
    DbManager db=new DbManager();
    String feedbackdt=db.getDate();
    String query="insert into feedback(name,feedbacktext,feedbackdt) values('"+pname+"','"+feedbacktext+"','"+feedbackdt+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Feedback Submitted');window.location.href='../feedback.jsp';</script>");
    }
    else
        out.print("<script>alert('Feedback didn't Submitted');window.location.href='../feedback.jsp';</script>");
%>