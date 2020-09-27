<%@page import="projectpackage.DbManager"%>
<%
    String pname=request.getParameter("pname");
    String answertext=request.getParameter("answertext");
    DbManager db=new DbManager();
    String posteddt=db.getDate();
    int qid=Integer.parseInt(request.getParameter("qid"));
    String query="insert into answer(answertext,answeredby,posteddt,qid) values('"+answertext+"','"+pname+"','"+posteddt+"','"+qid+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Answer posted');window.location.href='../postquestion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Answer is not posted');window.location.href='../postquestion.jsp';</script>");
    }
%>