<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Return Book</title>
<%@include file="HeaderAndFooter/all_css.jsp" %>
 <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
	<h1>Return Book</h1>
	<form action="./ReturnBookServlet" method="post">
		Book Name : <select id="bookname" name="bookname">
			<%
				try{
					ResultSet rs = (ResultSet)session.getAttribute("rs");
					while(rs.next())
					{
						%>
						<option value="<%=rs.getString("book_name")%>"><%=rs.getString("book_name") %></option>
						<%
					}
				}
				catch(Exception e1){
						System.out.println(e1);
				}
			%>
		</select>
		<br><br>
		
		User Name : <select id="username" name="username">
			<%
				try{
					ResultSet rs2 = (ResultSet)session.getAttribute("rs2");
					while(rs2.next())
					{
						%>
						<option value="<%=rs2.getString("user_name")%>"><%=rs2.getString("user_name") %></option>
						<%
					}
				}
				catch(Exception e2){
						System.out.println(e2);
				}
			%>
		</select>
		<br><br>
		
		Return Date : <input type="date" name="date">
		<br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>