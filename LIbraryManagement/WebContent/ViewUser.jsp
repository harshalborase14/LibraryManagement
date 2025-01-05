<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View User</title>
 <%@include file="HeaderAndFooter/all_css.jsp" %>
 <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
	<h1>User List</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Contact No.</th>
        </tr>
        <%
        try
        {
        	ResultSet rs = (ResultSet)session.getAttribute("rs");
        	while(rs.next())
        	{
        	%>
        	<tr>
        		<td><%=rs.getString("userid") %>
        		<td><%=rs.getString("name") %>
        		<td><%=rs.getString("contact") %>
         	</tr>
        	<%
        	}
        	System.out.println("User List");
        }
        catch(Exception e)
        {
        	System.out.println(e+" in View User.jsp");
        }
        %>
    </table>

<script>
    // Detect page refresh
    if (performance.navigation.type === 1) {
        // If the page is reloaded, redirect to again this page with retried data
        window.location.href = "./ViewUserServlet";
    }
</script>
</body>
</html>