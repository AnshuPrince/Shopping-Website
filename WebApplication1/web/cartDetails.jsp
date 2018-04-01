<%-- 
    Document   : cartDetails
    Created on : 30 Mar, 2018, 7:55:39 PM
    Author     : Anshu_Prince
--%>

<%@page import="Servlets.Product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String user = (String)session.getAttribute("UserName");
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%= user %>'s Cart</title>
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
                            <a href="<%=response.encodeURL("GetProducts")%>"> View Products </a>
                        </p>
                        <p>
                            <a href="<%=response.encodeURL("GetCartDetails")%>">View Cart Details </a>
                        </p>
                        <p>
                            <a href="<%=response.encodeURL("Logout")%>">logout </a>
                        </p>
                    </blockquote>
                </td>
                <td width="80%" align="left" valign="top">
                    
                   Welcome, <%= user %>
            <center>
                Your Cart contains the following products
            </center>
            <table width="80%" border="1">
                <tr>
                    <th width="25%">Product Code</th>
                    <th width="25%">Product Name</th>
                    <th width="25%">Quantity</th>
                </tr>
                <%
                    Collection products = (Collection)session.getAttribute("products");
                    if(products == null)
                    {
                %>
                <tr>
                    <td colspan="3" align="center">
                        Your Cart seems to be empty
                    </td>
                </tr>
                <%
                    }
                    else
                       {
                        Iterator i= products.iterator();
                        while(i.hasNext())
                            {
                                Product p = (Product)i.next();
                                %>
                                <tr>
                                    <td>
                                        <%= p.getCode() %>
                                    </td>
                                    <td>
                                        <%= p.getName() %>
                                    </td>
                                    <td>
                                        <%= p.getQty() %>
                                    </td>
                                </tr>
                <%
                            }       
                       }
                %>
            </table>
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
