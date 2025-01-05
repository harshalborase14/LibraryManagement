import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ReturnBookServlet")
public class ReturnBookServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String un = req.getParameter("username");
		String bn = req.getParameter("bookname");
		String rdate = req.getParameter("date");
		
		try
		{
			PreparedStatement pstm = DBConnection.getConnection().prepareStatement("insert into returned_books(user_name,book_name,date) values(?,?,?);");
			pstm.setString(1, un);
			pstm.setString(2, bn);
			pstm.setString(3, rdate);
			int i = pstm.executeUpdate();
			if(i!=0){
				System.out.println("Record Inserted in Returned_books table");
			}
			else{
				System.out.println("Error occurece while inserting data in returned_books table");
			}
			
			PreparedStatement pstm2 = DBConnection.getConnection().prepareStatement("delete from issued_books where book_name = ? and user_name = ?;");
			pstm2.setString(1, bn);
			pstm2.setString(2, un);
			int i2 = pstm2.executeUpdate();
			if(i2!=0) {
				System.out.println("Record SuccessFully Deleted From Issued Books Table");
			}
			else
			{
				System.out.println("Error occurece while deleting data from issued_books table");
				resp.sendRedirect("admin_dashboard.jsp");
			}
		}
		catch(Exception e)
		{
			System.out.println("ReturnBookServlet : "+e);
		}
		
	}
	
}
