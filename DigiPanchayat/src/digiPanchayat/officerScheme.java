package digiPanchayat;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DbConnection.Dbconnection;

/**
 * Servlet implementation class officerScheme
 */
@WebServlet("/officerScheme")
public class officerScheme extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public officerScheme() {
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
		
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String date = request.getParameter("date");
		Connection con= Dbconnection.connect();
		System.out.println(title+date+description);

		try{ 	
		PreparedStatement ps = con.prepareStatement("INSERT INTO schemes(title, description, launchdate) VALUES (?, ?, ?)");

		ps.setString(1,title);
		ps.setString(2,description);
		ps.setString(3,date);
		int i =ps.executeUpdate();
		
		if(i >0){
			response.sendRedirect("officerScheme.jsp");
		}
			
		
		}catch (Exception e){
			e.printStackTrace();
		}

		doGet(request, response);
	}

}
