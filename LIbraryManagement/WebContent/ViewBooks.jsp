<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Books</title>
  <%@include file="HeaderAndFooter/all_css.jsp" %>
 <%@include file="HeaderAndFooter/Header.jsp" %>
</head>
<body>
	
    <h1>Book List</h1>
    <table border="1">
        <tr>
            <th>Book ID</th>
            <th>Book Name</th>
            <th>Author</th>
            <th>Category</th>
        </tr>
        <%
        try
        {
        	ResultSet rs = (ResultSet)session.getAttribute("rs");
        	while(rs.next())
        	{
        	%>
        	<tr>
        		<td><%=rs.getString("book_id") %>
        		<td><%=rs.getString("book_name") %>
        		<td><%=rs.getString("author") %>
        		<td><%=rs.getString("category") %>
         	</tr>
        	<%
        	}
        	System.out.println("All books");
        }
        catch(Exception e)
        {
        	System.out.println(e+" in videbooks.jsp");
        }
        %>
    </table>
</body>
</html>
