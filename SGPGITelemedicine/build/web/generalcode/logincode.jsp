<%@page import="java.sql.ResultSet"%>
<%@page import="projectpackage.DbManager"%>
<%
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    DbManager db=new DbManager();
   
    String query="select usertype from login where userid='"+userid+"' and password='"+password+"'";
    ResultSet rs=db.selectQuery(query);
    if(rs.next())
    {
        //for valid user
        //out.print("<script>alert('valid user.')</script>");
        String usertype=rs.getString(1);
        if(usertype.equals("user"))
        {
            //Redirect to user zone
            session.setAttribute("userid",userid);
            response.sendRedirect("../userzone/userhome.jsp");
        }
        else if(usertype.equals("admin"))
        {
            //Redirect to admin zone
            session.setAttribute("adminid", userid);
            response.sendRedirect("../adminzone/adminhome.jsp"); 
        }
    }
    else
    {
    out.print("<script>alert('Invalid User.');window.location.href='../login.jsp';</script>");
    }
 %>