<%-- 
    Document   : baseLayout
    Created on : 31 Mar, 2018, 2:13:34 PM
    Author     : Anshu_Prince
--%>
<%--
Base layout to be added in every presentation related page.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/loginPage.css">
        <link rel="stylesheet" type="text/css" href="css/baseCss.css">  
    </head>
    <body>
        <script src="javascript/baseScript.js" ></script>
        <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <br>
                <a href="<%=response.encodeURL("GetProducts")%>">View Products </a>
                <br>
                <a href="<%=response.encodeURL("GetCartDetails")%>">View Cart Details </a>
                <br>
                <a href="#">Customer Support</a> 
                <br>
                <a href="<%=response.encodeURL("Logout")%>"> logout </a>
        </div>
        <span style="font-size:30px;cursor:pointer; background-color:whitesmoke;" onclick="openNav()">
            &#9776; 
        </span>
    </body>
</html>
