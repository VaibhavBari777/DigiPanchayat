<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "DbConnection.*" %>
<%@ page import= "digiPanchayat.*" %>
<%@ page import= "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Notice Board</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom right, #0f2027, #203a43, #2c5364);
            color: white;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #00bfff;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #1c1c1c;
            box-shadow: 0 0 10px rgba(0, 191, 255, 0.2);
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #333;
        }

        th {
            background-color: #00bfff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #2e2e2e;
        }

        tr:hover {
            background-color: #3d3d3d;
        }
    </style>
</head>
<body>

<h1>Published Notices</h1>

<%
    Connection con = Dbconnection.connect();
    PreparedStatement ps = con.prepareStatement("SELECT * FROM notice");
    ResultSet rs = ps.executeQuery();
%>

<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Content</th>
        <th>Publish Date</th>
    </tr>

    <% while (rs.next()) { %>
        <tr>
            <td><%= rs.getInt(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
        </tr>
    <% } %>
</table>

</body>
</html>
