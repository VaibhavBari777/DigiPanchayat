<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ page import = "digiPanchayat.*" %> 
       <%@ page import = "java.sql.*" %> 
         <%@ page import = "DbConnection.*" %> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% Connection con = Dbconnection.connect();
	int id = Integer.parseInt(request.getParameter("id"));

	PreparedStatement ps = con.prepareStatement("delete from complaint where id =?");
	ps.setInt(1,id);
	int i =ps.executeUpdate();
	if (i>0){
		response.sendRedirect("citizenComplaintDisplay.jsp");
	}
%>

</body>
</html>