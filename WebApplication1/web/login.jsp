<%-- 
    Document   : login
    Created on : 30 Mar, 2018, 7:02:29 PM
    Author     : Anshu_Prince
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/loginPage.css">
    </head>
    <body >
       
        <div class="form">
            <form action="LoginServlet" method="post"> 
                <label>    
                    <input type="text" required name="email" />
                        <div class="label-text">Email</div>  
                </label>  
                <label>   
                    <input type="password" required name="password" />   
                        <div class="label-text">Password</div> 
                </label>  
                <label>
                    <input type="submit" name="submit" value="Login">      
                </label>
                
            </form> 
        </div>    
    </body>
</html>