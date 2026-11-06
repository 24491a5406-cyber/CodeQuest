
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration - CodeQuest</title>
    
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h1>CodeQuest</h1>
    <h2>Student Registration</h2>

    <form action="register" method="post">

        <label>Full Name:</label>
        <input type="text" name="name"
               placeholder="Enter your name" required>

        <br><br>

        <label>Email:</label>
        <input type="email" name="email"
               placeholder="Enter your email" required>

        <br><br>

        <label>Password:</label>
        <input type="password" name="password"
               placeholder="Enter your password" required>

        <br><br>

        <button type="submit">Register</button>

    </form>

    <p>Already have an account?
        <a href="login.jsp">Login here</a>
    </p>

</body>
</html>
