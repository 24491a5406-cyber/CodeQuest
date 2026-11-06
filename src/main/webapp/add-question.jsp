
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
<title>Add Question - CodeQuest</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h1>Add Programming Question</h1>
    <%
    if ("true".equals(request.getParameter("success"))) {
%>
    <p style="color: green;">
        Question added successfully!
    </p>
<%
    }
%>

    <form action="add-question" method="post">

        <label>Question Title:</label><br>
        <input type="text" name="title" required>
        <br><br>

        <label>Question Description:</label><br>
        <textarea name="description" required></textarea>
        <br><br>

        <label>Difficulty:</label><br>
        <select name="difficulty" required>
            <option value="Easy">Easy</option>
            <option value="Medium">Medium</option>
            <option value="Hard">Hard</option>
        </select>
        <br><br>

        <label>Correct Answer:</label><br>
        <input type="text" name="correct_answer" required>
        <br><br>

        <label>XP Points:</label><br>
        <input type="number" name="xp" value="10" min="1" required>
        <br><br>

        <button type="submit">Add Question</button>

    </form>

    <br>
    <a href="admin-dashboard.jsp">Back to Dashboard</a>

</body>
</html>
