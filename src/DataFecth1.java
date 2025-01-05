import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DataFetch1")
public class DataFecth1 extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			Statement stm1 = DBConnection.getConnection().createStatement();
			Statement stm2 = DBConnection.getConnection().createStatement();
			ResultSet b = stm1.executeQuery("select book_name from books;");
			ResultSet u = stm2.executeQuery("select name from user");
			
			HttpSession session = req.getSession();
			session.setAttribute("b", b);
			session.setAttribute("u", u);
			
			System.out.println("Data Fetching is done");
			resp.sendRedirect("Issue_book.jsp");
			
		}
		catch(Exception e)
		{
			System.out.println("Data Fetching 1 : "+e);
		}
	}
}
