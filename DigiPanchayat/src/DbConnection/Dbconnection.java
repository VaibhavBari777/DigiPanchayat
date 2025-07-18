package DbConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {
	public static Connection connect(){
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3307/digipanchayat" ,"root" ,"");
			System.out.println("Connection is establish ");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return con;
		
		
	}

}
