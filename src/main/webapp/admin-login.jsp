
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login - CodeQuest</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h2>Admin Login</h2>

    <form action="admin-login" method="post">

        <label>Admin Email:</label><br>
        <input type="email" name="email" required>
        <br><br>

        <label>Password:</label><br>
        <input type="password" name="password" required>
        <br><br>

        <button type="submit">Admin Login</button>

    </form>

</body>
</html>
