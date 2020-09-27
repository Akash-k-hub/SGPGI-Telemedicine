<%-- 
    Document   : index
    Created on : Jul 15, 2018, 8:36:37 PM
    Author     : akash
--%>

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
    <body onload="slider()">
        <form action="generalcode/enquirycode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <table style="margin-top:30px;margin-left:90px;width:70%;height:400px;font-family:calibri;border-radius:10px;border:1px solid grey;">
                            <tr>
                                <td colspan="2" style="font-size:30px;color:darkcyan;text-align:center;">
                                    <u>Enquiry Form</u>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Enter your Name : </td>
                                <td><input type="text" placeholder="Enter Your name" name="name" required=""/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Select your Gender : </td>
                                <td><input type="radio" name="gender" value="male"/>Male
                                <input type="radio" name="gender" value="female"/>Female</td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">
                                    Enter Address : 
                                </td>
                                <td>
                                    <textarea name="address" placeholder="Enter your address"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Enter Contact No :</td>
                                <td><input type="number" required name="contactno" placeholder="Eg: 9876543210"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">
                                    Enter E-mail address : 
                                </td>
                                <td><input type="email" name="emaila" required placeholder="Eg: xyz@gmail.com"/></td>
                            </tr>
                            <tr>
                                <td style="text-align:center;">Enter Enquiry Text : </td>
                                <td>
                                    <textarea name="enquirytext" placeholder="Write your query here"></textarea>
                                </td>
                            </tr>
                            
                            <tr>
                                <td colspan="2" style="text-align:center;">
                                    <input type="submit" value="Submit" style="width:15%;height:63%;background-color:grey;color:white;border:1px solid grey;border-radius:4px;"/>
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
