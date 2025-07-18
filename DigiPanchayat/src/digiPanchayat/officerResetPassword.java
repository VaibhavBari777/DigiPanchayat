package digiPanchayat;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DbConnection.Dbconnection;

/**
 * Servlet implementation class officerResetPassword
 */
@WebServlet("/officerResetPassword")
public class officerResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public officerResetPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String newPassword = request.getParameter("newPassword");
		String oldPassword = request.getParameter("oldPassword");
		int id = citizenIdSetter.getId();
		System.out.println( "get Id "+id +"||"+ oldPassword +"|||" +newPassword);
		Connection con = Dbconnection.connect();
		try {
			PreparedStatement p = con.prepareStatement("select * from officerregister where id = ? and password = ?");
			p.setInt(1, id);
			p.setString(2, oldPassword);
			ResultSet r = p.executeQuery();
			
			if (r.next()){
			PreparedStatement	ps = con.prepareStatement("update officerregister set password =? where id = ?");
			ps.setString(1, newPassword);
			ps.setInt(2, id);
			int i = ps.executeUpdate();
			if ( i >0){
				System.out.println("Your password is updated ");
				response.sendRedirect("officerResetPassword.jsp");
				}
			
				
			}
			else{
				response.sendRedirect("officerIncorrectOldPassword.html");
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
