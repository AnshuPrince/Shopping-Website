<%-- 
    Document   : getProducts
    Created on : 30 Mar, 2018, 9:28:38 PM
    Author     : Anshu_Prince
--%>

<%@page import="Servlets.Product"%>
<%@page import="java.util.Iterator"%>
<%@page import="Servlets.ProductsDAO"%>
<%@page import="java.util.Collection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%!
    ProductsDAO productsdao = new ProductsDAO();   
%>


<%
    String user = (String)session.getAttribute("UserName");
    response.setContentType("text/html");
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product List</title>
        
    </head>
    <body>
        <script src="javascript/validateProducts"></script>
        
        <table width="100%" height="90%" border="1">
            <tr align="center">
                <td height="40" colspan="2">
                    <%
                        out.println("Stubby shop");
                    %>
                </td>
            </tr>
            <tr>
                <td width="25%" height="500" valign="top">
                    <p> &nbsp; </p>
                    
                </td>
                <td width="75%" align="left" valign="top">
                    
                   Welcome, <%= user %>
                   <form method="POST" action="AddProducts" >
                       <table width="100%" border="1">
                           <tr>
                               <th width="10%">Check</th>
                               <th width="25%">Product Code</th>
                               <th width="25%">Product Name</th>
                               <th width="20%">Available Quantity</th>
                               <th width="20%">Required Quantity</th>
                           </tr>
                           <%
                               Collection products = productsdao.getProducts();
                               if(products == null)
                               {
                                   %>
                                   <tr>
                                       <td colspan="5" align="center">
                                           No Products Available :-/
                                       </td>
                                   </tr>
                                   <%
                               }
                               else
                               {
                                Iterator i = products.iterator();
                                while(i.hasNext())
                                 {
                                    Product p = (Product)i.next();
                                    %>
                                    <tr>
                                        <td align="center">
                                            <input type="checkbox" name='products' value="<%=p.getCode()%>" >
                                            <input type="hidden" name='<%=p.getCode()%>+"Name"' value="<%=p.getName()%>" >
                                        </td>
                                        <td>
                                            <%=p.getCode()%>
                                        </td>
                                        <td>
                                            <%=p.getName()%>
                                        </td>
                                        <td>
                                            <%=p.getQty()%>
                                        </td>
                                        <td>
                                        <input type="text" name="<%=p.getCode()%>">
                                        </td>
                                    </tr>
                                    <%
                                  }
                                }
                               %>
                       </table>
                       <center>
                       <input type="submit" value="Add to cart">
                       </center>
                   </form>
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
