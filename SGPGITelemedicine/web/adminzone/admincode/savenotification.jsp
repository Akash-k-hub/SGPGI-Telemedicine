<%@page import="projectpackage.DbManager"%>
<%
    String notificationtext=request.getParameter("notificationtext");
    DbManager db=new DbManager();
    String posteddate=db.getDate();
    String query="insert into notification(notificationtext,posteddate) values('"+notificationtext+"','"+posteddate+"')";
    if(db.executeNonQuery(query))
    {
        out.print("<script>alert('Notification is saved');window.location.href='../adminhome.jsp'</script>");
    }
    else
    {
        out.print("<script>alert('Notification is not saved');window.location.href='../adminhome.jsp'</script>");
    }
%>