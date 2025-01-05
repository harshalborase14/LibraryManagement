<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issued Books</title>
 <%@include file="HeaderAndFooter/all_css.jsp" %>
 <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
<center>
	<h1>Issued Books</h1>
    <table border="1">
        <tr>
            <th>Issued ID</th>
            <th>Book Name</th>
            <th>User Name</th>
            <th>Issued Date</th>
            <th>Due Date</th>
        </tr>
        <%
        try
        {
        	ResultSet rs = (ResultSet)session.getAttribute("rs");
        	while(rs.next())
        	{
        	%>
        	<tr>
        		<td><%=rs.getString("issued_id") %></td>
        		<td><%=rs.getString("book_name") %></td>
        		<td><%=rs.getString("user_name") %></td>
        		<td><%=rs.getString("issued_date") %></td>
        		<td><%=rs.getString("return_date") %></td>
         	</tr>
        	<%
        	}
        }
        catch(Exception e)
        {
        	System.out.println(e+" in issuedBooks.jsp");
        }
        %>
    </table>
</center>
</body>
</html>