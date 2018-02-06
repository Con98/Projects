<%-- 
    Document   : header
    Created on : Jan 29, 2018, 3:53:24 PM
    Author     : Thomas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         
        <title>Header</title>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">TheSongDb</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#"><%=dataBundle.getString("home")%></a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><%=dataBundle.getString("page")%> 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#"><%=dataBundle.getString("page")%> 1-1</a></li>
          <li><a href="#"><%=dataBundle.getString("page")%> 1-2</a></li>
          <li><a href="#"><%=dataBundle.getString("page")%> 1-3</a></li>
        </ul>
      </li>
      <li><a href="#"><%=dataBundle.getString("page")%> 2</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> <%=dataBundle.getString("register")%></a></li>
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> <%=dataBundle.getString("login")%></a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-asterisk"></span> Settings <span class="caret"></span></a>
      <ul class="dropdown-menu">
          <li><a href="#"><%=dataBundle.getString("page")%> 1-1</a></li>
          <li><a href="#"><%=dataBundle.getString("page")%> 1-2</a></li>
          <li><a href="#"><%=dataBundle.getString("page")%> 1-3</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>
    </body>

</html>
