<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Books</title>
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

        .header h1 {
            margin: 0;
        }

        .container {
            padding: 20px;
            text-align: center;
        }

        .container h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            gap: 15px;
            flex-wrap: wrap;
        }

        .button-container a {
            display: inline-block;
            text-decoration: none;
            color: white;
            background-color: #0073e6;
            padding: 12px 25px;
            border-radius: 6px;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.2s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .button-container a:hover {
            background-color: #005bb5;
            transform: translateY(-3px);
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
    
    <footer class="footer">
        <p>&copy; 2024 Harshal. All rights reserved.</p>
    </footer>
</body>
</html>
