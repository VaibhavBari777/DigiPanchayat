package digiPanchayat;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import DbConnection.Dbconnection;

/**
 * Servlet implementation class citizenLogin
 */
@WebServlet("/citizenLogin")
public class citizenLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public citizenLogin() {
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Connection con = Dbconnection.connect();
		System.out.println(email+password);


		try {
			PreparedStatement ps = con.prepareStatement("Select * from citizenRegister where email= ? and password = ?");
			ps.setString(1, email);
			ps.setString(2, password);
		
			
			ResultSet rs  = ps.executeQuery();
			System.out.println(email+password);
			if (rs.next()){
				response.sendRedirect("citizenDashboard.html");
				int id = rs.getInt(1);
				
				citizenIdSetter.setId(id);
				System.out.println( "id of login citizen "+id);
			}
			else{
				response.sendRedirect("adminError.html");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		
		
		doGet(request, response);
		
		
	}

}
