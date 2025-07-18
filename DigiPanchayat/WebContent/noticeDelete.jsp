<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="digiPanchayat.*" %>
        <%@ page import ="DbConnection.*" %>
                <%@ page import ="java.sql.*" %>
       <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	System.out.println("id of notice "+Integer.parseInt(request.getParameter("id")));
	Connection con = Dbconnection.connect();
PreparedStatement ps = con.prepareStatement("delete from notice  where id = ?");
	ps.setInt(1,Integer.parseInt(request.getParameter("id")));
	int i = ps.executeUpdate();
	if (i>0){
		response.sendRedirect("noticeDisplay.jsp");
	}
%>

</body>
</html>