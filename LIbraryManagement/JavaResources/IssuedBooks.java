import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/IssuedBooks")
public class IssuedBooks extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			Statement stm = DBConnection.getConnection().createStatement();
			ResultSet rs = stm.executeQuery("select * from issued_books;");
			
			HttpSession session = req.getSession();
			session.setAttribute("rs", rs);
			
			System.out.println("All Data Retrived From Issued_books table");
			resp.sendRedirect("IssuedBooks.jsp");
		}
		catch(Exception e)
		{
			System.out.println("/Issuedooks Servlet : "+e);
		}
	}
}
