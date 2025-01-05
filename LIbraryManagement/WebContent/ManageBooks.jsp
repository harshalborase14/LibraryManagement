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
        <h1>Manage Books</h1>
        <div class="button-container">
        	<a href="AddBooks.jsp">Add Books</a>
            <a href="./ViewBooksServlet">View Books</a>
            <a href="DeleteBooks.jsp">Delete Books</a>
        </div>
    </div>
</body>
</html>
