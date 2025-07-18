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
 * Servlet implementation class officerNotice
 */
@WebServlet("/officerNotice")
public class officerNotice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public officerNotice() {
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
		String content = request.getParameter("content");
		String date = request.getParameter("date");
		Connection con= Dbconnection.connect();
		System.out.println(title+date+content);

		try{ 	
		PreparedStatement ps = con.prepareStatement("INSERT INTO notice(title, content, publishdate) VALUES (?, ?, ?)");

		ps.setString(1,title);
		ps.setString(2,content);
		ps.setString(3,date);
		int i =ps.executeUpdate();
		
		if(i >0){
			response.sendRedirect("officerNotice.jsp");
		}
			
		
		}catch (Exception e){
			e.printStackTrace();
		}

		doGet(request, response);
	}

}
