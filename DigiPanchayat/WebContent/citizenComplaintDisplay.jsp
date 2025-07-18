<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "digiPanchayat.*" %> 
<%@ page import = "java.sql.*" %> 
<%@ page import = "DbConnection.*" %> 

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Complaint Management</title>
<style>
    body {
        background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
        color: white;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 20px;
    }

    h1 {
        color: cyan;
        text-align: center;
        margin-bottom: 30px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: #1f1f1f;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 0 10px rgba(0,0,0,0.5);
    }

    th, td {
        padding: 12px 15px;
        border: 1px solid #444;
        text-align: center;
    }

    th {
        background-color: #222;
        color: cyan;
    }

    tr:nth-child(even) {
        background-color: #2a2a2a;
    }

    tr:hover {
        background-color: #333;
    }

    a {
        color: #00ffff;
        text-decoration: none;
        font-weight: bold;
    }

    a:hover {
        color: #ff5050;
    }
</style>
</head>
<body>

<h1>View & Manage Complaints</h1>

<%
	int id =citizenIdSetter.getId();
    Connection con = Dbconnection.connect();
    PreparedStatement ps = con.prepareStatement("Select * from complaint where cid =?");
    ps.setInt(1,id);
    ResultSet rs = ps.executeQuery();
%>

<table>
    <tr>
        <th>Complaint Id</th>
        <th>Citizen Id</th>
        <th>Area of Complaint</th>
        <th>Description</th>
        <th>Date</th>
        <th>Status</th>
        <th>Delete Complaint</th>
    </tr>

    <%
        while (rs.next()) {
    %>
    <tr>
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getInt(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><%= rs.getString(6) %></td>
        <td><a href="citizenComplaintDelete.jsp?id=<%= rs.getInt(1) %>">Delete</a></td>
    </tr>
    <%
        }
    %>
</table>

</body>
</html>
