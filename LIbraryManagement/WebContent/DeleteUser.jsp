<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Delete User</title>
 <%@include file="HeaderAndFooter/all_css.jsp" %>
 <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
    <h1>Delete a User</h1>
    <form action="./DeleteBookServlet" method="post">
        Enter User id : <input type="text" name="userid" required><br><br>
        <input type="submit" value="Delete User">
    </form>
</body>
</html>
