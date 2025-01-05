import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DataFetch2")
public class DataFetch2 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			Statement stm = DBConnection.getConnection().createStatement();
			Statement stm2 = DBConnection.getConnection().createStatement();
			
			ResultSet rs = stm.executeQuery("select book_name from issued_books;");
			ResultSet rs2 = stm2.executeQuery("select user_name from issued_books;");
			
			
			HttpSession session = req.getSession();
			session.setAttribute("rs", rs);
			session.setAttribute("rs2", rs2);
			
			System.out.println("Data Fetching is Done in /DataFetch2");
			resp.sendRedirect("Return_book.jsp");
		}
		catch(Exception e)
		{
			System.out.println("/DataFetch2 : "+e);
		}
	}
}
