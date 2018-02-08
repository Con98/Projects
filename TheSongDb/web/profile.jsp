<!DOCTYPE html>
<%-- 
    Document   : profile
    Created on : 01-Feb-2018, 11:21:18
    Author     : emmet
--%>

<%@page import = "Dtos.User" %>
<%@page import = "Daos.UserDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "index.jsp"%>

<%
    try{
        if (session.getAttribute("login") == null){
%>

<%
    }
if(session.getAttribute("login") != null){
UserDao checkuser = new UserDao("TheSongDb", "jdbc/TheSongDb");
User loggedUser = (User) session.getAttribute("login");
boolean userN = loggedUser.isType();

if(loggedUser.isType() == userN){
%>

<% }else {%>
<!--Regular Nav-->
<%
    }
        }
    } catch (Exception ex) {
        out.println(ex.getMessage());
    }
%>

<h1>Welcome To Your Profile</h1>
<%
    User loggedUser = (User) session.getAttribute("login");
    
String fName = loggedUser.getFirstName();
String lName = loggedUser.getSurName();
String email = loggedUser.getEmail();

String message1 = "";
String message2 = "";
String message3 = "";

if (loggedUser != null){
    message1 = fName;
    message2 = lName;
    message3 = email;
}
%>
<br/>
<h2>Personal Info</h2>
<table>
    <tr>
        <th>Firstname: </th>
        <td><%=message1%></td>
    </tr>
    
    <tr>
        <th>Surname: </th>
        <td><%=message3%></td>
    </tr>
    
    <tr>
        <th>Email Address: </th>
        <td><%=message3%></td>
    </tr>
</table>
</body>
</html>