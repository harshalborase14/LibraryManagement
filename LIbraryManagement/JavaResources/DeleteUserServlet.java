import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String id = req.getParameter("userid");
		
		try
		{
			PreparedStatement pstm = DBConnection.getConnection().prepareStatement("delete from user where user_id = ?;");
			pstm.setString(1, id);
			
			int i = pstm.executeUpdate();
			if(i!=0)
			{
				System.out.println("User Deleted");
			}
			else
			{
				System.out.println("Error");
			}
		}
		catch(Exception e)
		{
			System.out.println("DeleteUserServlet : "+e);
		}
		
	}
}
