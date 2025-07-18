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

@WebServlet("/addComplains")
public class addComplains extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addComplains() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String area = request.getParameter("area");
		String complaints = request.getParameter("complaints");
		String date = request.getParameter("date");
		int id = 0;
		int cid = citizenIdSetter.getId();

		System.out.println("Complaint received: " + area + " | " + complaints + " | " + date +" | " + cid);

		try (Connection con = Dbconnection.connect();
		     PreparedStatement ps = con.prepareStatement("INSERT INTO complaint VALUES (?,?, ?, ?, ?, ?)"))
		{
			ps.setInt(1,id);
			ps.setInt(2, cid);  // Replace with session ID if needed
			ps.setString(3, area);
			ps.setString(4, complaints);
			ps.setString(5, date);
			ps.setString(6, "pending");
			System.out.println(id);
			int i = ps.executeUpdate();

			if (i > 0) {
				response.sendRedirect("addComplaints.jsp");
			} else {
				response.getWriter().println("Failed to add complaint.");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			response.getWriter().println("Database error: " + e.getMessage());
		}
	}
}
