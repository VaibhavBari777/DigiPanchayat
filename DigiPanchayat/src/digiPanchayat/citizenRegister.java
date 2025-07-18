package digiPanchayat;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

import DbConnection.Dbconnection;

/**
 * Servlet implementation class citizenRegister
 */
@WebServlet("/citizenRegister")
public class citizenRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public citizenRegister() {
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
		int id = 0;
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		int contact = Integer.parseInt(request.getParameter("contact"));
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		
		Connection con = Dbconnection.connect();
		try {
			PreparedStatement ps = con.prepareStatement("insert into citizenregister values(?,?,?,?,?,?)");
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, address);
			ps.setInt(4, contact);
			ps.setString(5, email);
			ps.setString(6, password);
			System.out.println(name+address+contact+email+password);
			int i =ps.executeUpdate();
			if (i > 0){
				response.sendRedirect("citizenYouRegisterSuccesfull.html");
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
