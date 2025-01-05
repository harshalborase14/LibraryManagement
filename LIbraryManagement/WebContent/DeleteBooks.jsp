<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete Book</title>
 <%@include file="HeaderAndFooter/all_css.jsp" %>
 <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
    <h1>Delete a Book</h1>
    <form action="./DeleteBookServlet" method="post">
        <label for="bookID">Enter Book ID:</label>
        <input type="text" name="bookID" required><br><br>
        <input type="submit" value="Delete Book">
    </form>
</body>
</html>
