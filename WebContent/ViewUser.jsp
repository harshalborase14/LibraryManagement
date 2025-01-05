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
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #fff;
            padding: 10px 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            margin: 0 10px;
            font-weight: bold;
        }

        .navbar a:hover {
            text-decoration: underline;
        }

        .logout {
            background-color: #0073e6;
            color: white;
            padding: 8px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .logout:hover {
            background-color: #005bb5;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
            color: #0073e6;
        }

        .table-container {
            margin: 20px auto;
            width: 90%;
            overflow-x: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #0073e6;
            color: white;
            text-transform: uppercase;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .footer {
            background-color: #f4f4f9;
            color: #666;
            text-align: center;
            padding: 10px 0;
            border-top: 1px solid #ddd;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        .footer p {
            margin: 0;
        }
    </style>
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
    
    <footer class="footer">
        <p>&copy; 2024 Harshal. All rights reserved.</p>
    </footer>

<script>
    // Detect page refresh
    if (performance.navigation.type === 1) {
        // If the page is reloaded, redirect to again this page with retried data
        window.location.href = "./ViewUserServlet";
    }
</script>
</body>
</html>