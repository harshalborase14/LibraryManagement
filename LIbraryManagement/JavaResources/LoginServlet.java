import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlets")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		try(Connection c = DBConnection.getConnection())
		{
			PreparedStatement pstm = c.prepareStatement("select * from login where username = ? and password = ? ;");
			pstm.setString(1, username);
			pstm.setString(2, password);
			
			ResultSet rs = pstm.executeQuery();
			if(rs.next())
			{
				HttpSession session = req.getSession();
				session.setAttribute("username",username);
				resp.sendRedirect("admin_dashboard.jsp");
				System.out.println("Login SuccessFUll");
			}
			else
			{
				// Invalid credentials
                PrintWriter out = resp.getWriter();
                out.println("<html><body>");
                out.println("<h3>Invalid username or password. Please try again.</h3>");
                out.println("<a href=\"Login.jsp\">Back to Login</a>");
                out.println("</body></html>");
			}
		}
		catch(Exception e)
		{
			System.out.println(e+" In Login Page");
		}
	}

}
