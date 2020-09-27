<%@page import="projectpackage.SmsSender"%>
<%@page import="projectpackage.DbManager"%>
<%
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String emailaddress=request.getParameter("emaila");
    String enquirytext=request.getParameter("enquirytext");
    String contactno=request.getParameter("contactno");
    DbManager db=new DbManager();
    String enquirydt=db.getDate();
    String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydt) values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"','"+enquirydt+"')";
    boolean res=db.executeNonQuery(query);
    String msg="Thank you for your enquiry, we will sort it ASAP.-Team Ak";
    if(res==true)
    {
        SmsSender ss=new SmsSender();
        ss.SendSms(contactno, msg);
    out.println("<script>alert('Your enquiry is submitted.');window.location.href='../index.jsp'</script>");
    }
    else   
    {
        out.println("<script>alert('Your enquiry is not submitted.');window.location.href='../enquiry.jsp'</script>");

    }
%>