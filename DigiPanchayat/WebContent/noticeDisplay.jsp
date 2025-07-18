<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "DbConnection.*" %>
<%@ page import= "digiPanchayat.*" %>
<%@ page import= "java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Notices - DigiPanchayat</title>
    <style>
        body {
            background: transparent;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: #ffffff;
            padding: 40px;
            margin: 0;
        }

        h2 {
            text-align: center;
            color: #00bcd4;
            margin-bottom: 20px;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background-color: #2c3e50;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0,0,0,0.4);
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
            color: #ffc1b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>

<%
    Connection con = Dbconnection.connect();
    PreparedStatement ps = con.prepareStatement("SELECT * FROM notice");
    ResultSet rs = ps.executeQuery();
%>

<h2>Published Notices</h2>

<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Content</th>
        <th>Publish Date</th>
        <th>Delete Notice</th>
    </tr>

    <% while (rs.next()) { %>
    <tr>
        <td><%= rs.getInt(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><a href="noticeDelete.jsp?id=<%= rs.getInt(1) %>">Delete</a></td>
    </tr>
    <% } %>
</table>

</body>
</html>
