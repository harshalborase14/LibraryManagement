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
	
	<footer class="footer">
        <p>&copy; 2024 Harshal. All rights reserved.</p>
    </footer>
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