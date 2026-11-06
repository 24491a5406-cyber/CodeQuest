
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    if (session.getAttribute("adminId") == null) {
        response.sendRedirect("admin-login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - CodeQuest</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h1>Welcome to CodeQuest Admin Dashboard!</h1>

    <h2>Admin Panel</h2>

    <p>Manage students and programming questions.</p>

    <ul>
        <li><a href="add-question.jsp">Add Questions</a></li>
        <a href="view-questions.jsp">View Questions</a>
<br><br>
        <a href="view-students.jsp">View Students</a>
       <br><br>
<a href="leaderboard.jsp">View Leaderboard</a>
        <li><a href="#">View Leaderboard</a></li>
    </ul>

    <p>Admin login successful!</p>

    <br><br>

    <a href="admin-logout">Admin Logout</a>

</body>
</html>
