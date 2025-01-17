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
 <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }

        .header {
            background-color: #0073e6;
            color: white;
            padding: 20px;
            text-align: center;
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
            color: White;
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

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 150px); /* Adjust height excluding the navbar and footer */
            padding: 20px;
        }

        form {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px 30px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        form input[type="text"],
        form input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        form input[type="submit"] {
            background-color: #0073e6;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        form input[type="submit"]:hover {
            background-color: #005bb5;
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
<center>
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
</center>
<script>
    // Detect page refresh
    if (performance.navigation.type === 1) {
        // If the page is reloaded, redirect to again this page with retried data
        window.location.href = "./DataFetch2";
    }
</script>
</body>
</html>
