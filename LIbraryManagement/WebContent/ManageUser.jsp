<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Books</title>
  <%@include file="HeaderAndFooter/all_css.jsp" %>
  <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
	<div class="header">
        <h1>Library Management</h1>
    </div>
    <div class="container">
        <h1>Manage Users</h1>
        <div class="button-container">
        	<a href="RegisterUser.jsp">Register User</a>
            <a href="./ViewUserServlet">View User</a>
            <a href="DeleteUser.jsp">Delete User</a>
        </div>
    </div>
</body>
</html>
