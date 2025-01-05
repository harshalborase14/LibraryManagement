<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Issue Book</title>
 <%@include file="HeaderAndFooter/all_css.jsp" %>
 <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
<center>
	<h1>Issue A Book</h1>
	<form action="./IssueBookServlet" method="post">
		Book Name : <select id="bookname" name="bookname">
			<%
				try{
					ResultSet b = (ResultSet)session.getAttribute("b");
					while(b.next())
					{
						%>
						<option value="<%=b.getString("book_name")%>"><%=b.getString("book_name") %></option>
						<%
					}
				}
				catch(Exception e1){
						System.out.println("Issue_Book.jsp "+e1);
				}
			%>
		</select>
		<br><br>
		
		User Name : <select id="username" name="username">
			<%
				try{
					ResultSet u = (ResultSet)session.getAttribute("u");
					while(u.next())
					{
						%>
						<option value="<%=u.getString("name")%>"><%=u.getString("name") %></option>
						<%
					}
				}
				catch(Exception e2){
						System.out.println(e2);
				}
			%>
		</select>
		<br><br>
		
		Issued Date : <input type="date" name="issued_date"><br><br>
		
		Return Datae : <input type="date" name="return_date"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</center>
<script>
    // Detect page refresh
    if (performance.navigation.type === 1) {
        // If the page is reloaded, redirect to another page
        window.location.href = "./DataFetch1";
    }
</script>

</body>
</html>