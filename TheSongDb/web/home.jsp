<%-- 
    Document   : loginSuccess
    Created on : Jan 30, 2018, 9:13:27 AM
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@page import="Daos.UserDao"%>
        <%@page import="Dtos.User"%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <%
            Object logName = session.getAttribute("login");
            if (logName != null) {
                User user = (User) logName;
                session.setAttribute("userId", user.getUserId());
                int userId = user.getUserId();
        %>
        
        <h1>Hello <%= user.getFirstName()%></h1>
        
        <%
            }
            %>
    </body>
</html>
