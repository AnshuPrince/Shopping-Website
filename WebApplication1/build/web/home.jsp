<%-- 
    Document   : home
    Created on : 30 Mar, 2018, 7:26:03 PM
    Author     : Anshu_Prince
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String user = (String)session.getAttribute("UserName");
    response.setContentType("text/html");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Anshu's Shopping site</title>
    </head>
    <body>
        <table width="100%" height="90%" border="1">
            <tr align="center">
                <td height="40" colspan="2">
                    <a href="home.jsp">
                    <%
                        out.println("Stubby shop");
                    %>
                    </a>
                    
                </td>
            </tr>
            <tr>
                <td width="25%" height="500" valign="top">
                    <p> &nbsp; </p>
                <a href="<%=response.encodeURL("GetProducts")%>">View Products </a>
                <br>
                <a href="<%=response.encodeURL("GetCartDetails")%>">View Cart Details </a>
                <br>
                <a href="#">Customer Support</a> 
                <br>
                <a href="<%=response.encodeURL("Logout")%>"> logout </a>
                </td>
                <td width="75%" align="left" valign="top">
                    
                   Welcome, <%= user %>
                  
                </td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <em>&copy;Copyrights 2017-18</em>
                </td>
            </tr>
        </table>
    </body>
</html>
