<%-- 
    Document   : index
    Created on : Jul 15, 2018, 8:36:37 PM
    Author     : akash
--%>

<%@page import="projectpackage.CaptchaGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>SGPGI Telemedicine</title>
        <link href="css/generalstyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/menucss.css" rel="stylesheet" type="text/css"/>
        <script src="js/headscript.js" type="text/javascript"></script>
    </head>
    <body onload="slider()" style="font-family:calibri;" bgcolor="">
        <form action="generalcode/registrationcode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <table style="margin-top:30px;margin-left:65px;width:80%;height:700px;border:1px solid darkgrey;border-radius:10px;">
                            <tr>
                                <td colspan="2" style="font-size:30px;font-family:Times New Roman;color:darkcyan;text-align:center;">
                                    <u>Register Yourself</u>
                                </td> 
                            </tr>
                            <tr>
                                <td colspan="2"><hr/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">
                                    Patient's Name :
                                </td>
                                <td><input type="text" required name="patientname" placeholder="Enter patient's name"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Gender :</td>
                                <td>
                                    <input type="radio" required name="gender" value="male" required />Male
                                    <input type="radio" required name="gender" value="female"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Father's Name :</td>
                                <td><input type="text" required name="fathername" placeholder="Patient's Father name"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Address 1 :</td>
                                <td><textarea name="address1" required placeholder="Your permanent address"></textarea></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Address 2 :</td>
                                <td><textarea name="address2" placeholder="Temporary (Optional)"></textarea></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Disease :</td>
                                <td><input type="text" name="disease" required/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Referred by :</td>
                                <td><input type="text" name="referedby" placeholder="Referred by whom"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Hospital's Name :</td>
                                <td><input type="text" name="hospitalname" placeholder="Referred by where"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Contact Number :</td>
                                <td><input type="number" required name="contactno" placeholder="Eg: 9876543210"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">E-mail Address :</td>
                                <td><input type="email" name="emailaddress" placeholder="xyz@gmail.com"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Aadhar Number :</td>
                                <td><input type="text" required name="adharno" placeholder="XXXX-XXXX-XXXX"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Password :</td>
                                <td>
                                    <input type="password" required name="password" placeholder="Choose wisely"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Confirm Password :</td>
                                <td><input type="password" required name="confirmpassword" placeholder="Re-enter password"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Captcha :</td>
                                <td style="width:50%;">
                                    <%
                                        CaptchaGenerator cg=new CaptchaGenerator();
                                        String capcode=cg.getCode();
                                    %>
                                    <h3><%=capcode%></h3>
                                    <input type="hidden" name="capcode" value="<%=capcode%>"/>
                                 </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Enter Captcha :</td>
                                <td><input type="text" required name="captchacode" placeholder="Same as above"/></td>
                            </tr>

                            <tr>
                                <td colspan="2" style="text-align:center;">
                                    <input type="submit" value="SUBMIT" style="width:100px;height:30px;border:1px darkgrey;font-size:18px;background-color:darkgrey;border-radius:5px;color:white;"/>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>
            </div>
        </form>
    </body>
</html>
