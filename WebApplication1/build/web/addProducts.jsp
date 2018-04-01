<%-- 
    Document   : addProducts
    Created on : 30 Mar, 2018, 10:09:41 PM
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
        <title>Added Products</title>
    </head>
    <body>
        <table width="100%" height="90%" border="1">
            <tr align="center">
                <td height="40" colspan="2">
                    <%
                        out.println("Stubby shop");
                    %>
                </td>
            </tr>
            <tr>
                <td width="20%" height="500" valign="top">
                    <p> &nbsp; </p>
                    <blockquote>
                        <p>
                            <a href="<%=response.encodeURL("GetProducts")%>">View Products </a>
                            
                        </p>
                        <p>
                            <a href="<%=response.encodeURL("GetCartDetails")%>">View Cart Details </a>
                            
                        </p>
                        <p>
                            <a href="<%=response.encodeURL("Logout")%>"> logout </a>
                        </p>
                    </blockquote>
                </td>
                <td width="80%" align="left" valign="top">
                    
                   Welcome, <%= user %>
                   <br>
                   Products added Successfully to your cart
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
