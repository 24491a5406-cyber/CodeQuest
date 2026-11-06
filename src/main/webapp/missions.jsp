<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.codequest.DBConnection" %>

<%
    if (session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Programming Missions - CodeQuest</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h1>Available Programming Missions</h1>

    <%
        String sql = "SELECT id, title, description, difficulty, xp FROM questions";

        try (
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery()
        ) {
            while (rs.next()) {
    %>

        <div>
            <h2><%= rs.getString("title") %></h2>

            <p><%= rs.getString("description") %></p>

            <p>Difficulty: <%= rs.getString("difficulty") %></p>

            <p>XP Points: <%= rs.getInt("xp") %></p>

            <a href="solve-question.jsp?id=<%= rs.getInt("id") %>">
                Start Mission
            </a>

            <hr>
        </div>

    <%
            }
        } catch (Exception e) {
            out.println("Error: " + e.getMessage());
        }
    %>

    <br>
    <a href="dashboard.jsp">Back to Dashboard</a>

</body>
</html>