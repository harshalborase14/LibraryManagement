<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>

 <%@include file="HeaderAndFooter/all_css.jsp" %>
 <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
    <h1>Add a New Book</h1>
    <form action="./AddBookServlet" method="post">
        <label for="bookName">Book Name:</label>
        <input type="text" name="bookName" required><br><br>
        
        <label for="author">Author:</label>
        <input type="text" name="author" required><br><br>
        
        <label for="category">Category:</label>
        <input type="text" name="category" required><br><br>
        
        <input type="submit" value="Add Book">
    </form>
</body>
</html>
