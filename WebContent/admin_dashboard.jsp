<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Libray Management System</title>
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
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
        }

        .about-section {
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px;
        }

        .about-section h2 {
            margin: 0;
            color: #0073e6;
            font-size: 24px;
            text-align: center;
        }

        .about-section p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
            text-align: justify;
            margin-top: 15px;
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
        <div class="header">
            <h1>Library Management</h1>
        </div>

        <!-- About Us Section -->
        <div class="about-section">
            <h2>About Us</h2>
            <p>
                The Library Management System is a project designed and developed by Harshal Borase to streamline library operations. This system enables easy management of books, user records, and transactions such as book issuance and returns. Built using Java, JSP, and a database backend, it offers a secure, reliable, and user-friendly interface. This project is aimed at reducing manual efforts, enhancing resource accessibility, and providing a centralized solution for modern library needs.
            </p>
        </div>

        <footer class="footer">
            <p>&copy; 2024 Harshal. All rights reserved.</p>
        </footer>
    </center>
</body>
</html>
