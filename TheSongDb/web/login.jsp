<%-- 
    Document   : login
    Created on : Jan 30, 2018, 12:31:07 PM
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="styles.jsp" %>
    </head>
    <body>
        <h1>Login</h1>
        
        <form action="FrontController" method="post">
            <table>
                <tr>
                    <td>Enter Email: <input name="email" type="email" required></td>
                </tr>
                <tr>
                    <td>Enter Password: <input name="password" type="password" required></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Login"/></td>
                </tr>
                <br>
                
                <input type="hidden" name="action" value="login"/>
        </form>
    </body>
</html>
