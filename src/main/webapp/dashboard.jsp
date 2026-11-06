<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.codequest.DBConnection" %>

<%
    if (session.getAttribute("userId") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String userName = (String) session.getAttribute("userName");
    int userId = (Integer) session.getAttribute("userId");

    int totalXP = 0;

    String sql = "SELECT xp FROM users WHERE id = ?";

    try (
        Connection con = DBConnection.getConnection();
        PreparedStatement ps = con.prepareStatement(sql)
    ) {
        ps.setInt(1, userId);

        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                totalXP = rs.getInt("xp");
            }
        }

    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CodeQuest Dashboard</title>
<link rel="stylesheet" href="css/style.css">
</head>

<body>

    <h1>Welcome to CodeQuest!</h1>

    <h2>Hello, <%= userName %>!</h2>

    <p>You have successfully logged in.</p>

    <h3>Student Dashboard</h3>

    <p>Start your programming journey!</p>

    <h2>Total XP Points: <%= totalXP %></h2>

    <a href="missions.jsp">Available Missions</a>
<br><br>
<a href="leaderboard.jsp">View Leaderboard</a>
    <br><br>
    

    <a href="logout">Logout</a>

</body>
</html>