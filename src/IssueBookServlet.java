import java.io.IOException;
import java.sql.PreparedStatement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/IssueBookServlet")
public class IssueBookServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String bn = req.getParameter("bookname");
		String un = req.getParameter("username");
		String idate = req.getParameter("issued_date");
		String rdate = req.getParameter("return_date");
//		Date dt_i = java.util.Date.valueOf(idate);
//		Date dt_r = java.util.Date.valueOf(rdate);
		
		try
		{
			PreparedStatement pstm = DBConnection.getConnection().prepareStatement("insert into issued_books(book_name,user_name,issued_date,return_date) values('"+bn+"','"+un+"','"+idate+"','"+rdate+"');");
//			pstm.setString(1, bn);
//			pstm.setString(2, un);
//			pstm.setString(3, idate);
//			pstm.setString(4, rdate);
			
			int i = pstm.executeUpdate();
			if(i!=0)
			{
				System.out.println("Book Issued");
				resp.sendRedirect("admin_dashboard.jsp");
			}
			else
			{
				System.out.println("Error");
			}
		}
		catch(Exception e)
		{
			System.out.println("IssueBookServlet : "+e);
		}
		
	}
}
