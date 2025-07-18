<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="digiPanchayat.*" %>
<%@ page import ="DbConnection.*" %>
<%@ page import ="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Officer Management</title>
    <style>
        body {
            background-color: #203a43;
            font-family: Arial, sans-serif;
            color: #ffffff;
            padding: 40px;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            margin: 20px auto;
            background-color: #2c3e50;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
        }

        th, td {
            padding: 12px 16px;
            text-align: center;
            border: 1px solid #455a64;
        }

        th {
            background-color: #1c2833;
            color: #00bcd4;
        }

        tr:hover {
            background-color: #34495e;
        }

        a {
            color: #ff6f61;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
            color: #ffab91;
        }

        .add-link {
            text-align: center;
            margin-top: 30px;
            font-size: 18px;
        }

        .add-link a {
            color: #4fc3f7;
            text-decoration: none;
        }

        .add-link a:hover {
            text-decoration: underline;
            color: #81d4fa;
        }
    </style>
</head>
<body>

<%
    Connection con = Dbconnection.connect();
    PreparedStatement ps = con.prepareStatement("SELECT * FROM officerRegister");
    ResultSet rs = ps.executeQuery();
%>

<h2 style="text-align:center;">Officer Details</h2>
<table>
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Designation</th>
        <th>Contact</th>
        <th>Email</th>
        <th>Delete Officer</th>
    </tr>

    <% while (rs.next()) { %>
    <tr>
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
        <td><a href="officerDelete.jsp?id=<%= rs.getInt(1) %>">Delete</a></td>
    </tr>
    <% } %>
</table>

<div class="add-link">
    <label>Add New Officer:</label> <a href="officerAdd.jsp">Click Here</a>
</div>

</body>
</html>
