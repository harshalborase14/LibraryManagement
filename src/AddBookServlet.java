import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String bookName = req.getParameter("bookName");
		String author = req.getParameter("author");
		String category = req.getParameter("category");
		
		try
		{
			PreparedStatement pstm = DBConnection.getConnection().prepareStatement("insert into books(book_name,author,category) values(?,?,?);");
			pstm.setString(1, bookName);
			pstm.setString(2, author);
			pstm.setString(3, category);
			
			int i = pstm.executeUpdate();
			
			if(i!=0)
			{
				System.out.println("Record Inserted");
				resp.sendRedirect("ManageBooks.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println(e+" in /AddBookServlet");
		}
		
	}
	
}
