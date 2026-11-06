
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CodeQuest Login</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h2>Student Login</h2>

    <% if ("true".equals(request.getParameter("success"))) { %>
        <p>Registration Successful! Please Login.</p>
    <% } %>

    <form action="login" method="post">

        <label>Email:</label><br>
        <input type="email" name="email" required>
        <br><br>

        <label>Password:</label><br>
        <input type="password" name="password" required>
        <br><br>

        <button type="submit">Login</button>

    </form>

    <p>New student? <a href="register.jsp">Register Here</a></p>

</body>
</html>
