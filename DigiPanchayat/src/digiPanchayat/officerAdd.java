package digiPanchayat;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DbConnection.Dbconnection;

/**
 * Servlet implementation class officerAdd
 */
@WebServlet("/officerAdd")
public class officerAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public officerAdd() {
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
		String designation = request.getParameter("designation");
		String contact = request.getParameter("contact");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println("Hello" +name+designation+contact+email+password);
		Connection con  = Dbconnection.connect();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into officerregister values (?,?,?,?,?,?) ");
			ps.setInt(1,id);
			ps.setString(2,name);
			ps.setString(3,designation);
			ps.setString(4,contact);
			ps.setString(5,email);
			ps.setString(6,password);
			
			int i =ps.executeUpdate();
			if (i >0){
				response.sendRedirect("officerCrud.jsp");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
		doGet(request, response);
	}

}
