import java.io.IOException;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterUserServlet")
public class RegisterUserServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String n = req.getParameter("name");
		String cn = req.getParameter("contact");
		try
		{
			PreparedStatement pstm = DBConnection.getConnection().prepareStatement("insert into user(name,contact) values(?,?);");
			pstm.setString(1, n);
			pstm.setString(2, cn);
			
			int i = pstm.executeUpdate();
			if(i!=0)
			{
				System.out.println("Record Inserted");
				resp.sendRedirect("ManageUser.jsp");
			}
			else
			{
				System.out.println("Elese");
			}
		}
		catch(Exception e)
		{
			System.out.println("RegiserUserServlet : "+e);
		}
	}
}
