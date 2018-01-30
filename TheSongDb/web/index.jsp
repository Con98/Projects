<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Welcome</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
    </head>
    
    <body>
        <%@include file="header.jsp" %>
        <h1>Login</h1>
        <div class="loginForm">
        
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
        </div>
        <h1>Register</h1>
        <div class="RegisterForm">
            
        <form action="FrontController" method="post">
            <table>
                <tr>
                    <td>Enter First Name: <input name="firstName" type="text" required></td>
                </tr>
                <tr>
                    <td>Enter Surname: <input name="surName" type="text" required></td>
                </tr>
                <tr>
                    <td>Enter Email: <input name="email" type="email" required></td>
                </tr>
                <tr>
                    <td>Enter Password: <input name="password" type="password" required</td>
                </tr>
                <tr>
                    <td><input type="submit" value="Register"/></td>
                </tr>
                <br>
                
                <input type="hidden" name="action" value="register"/>
        </form>
        </div>
    </body>
</html>
