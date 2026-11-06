
package com.codequest;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/add-question")
public class AddQuestionServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        if (request.getSession().getAttribute("adminId") == null) {
            response.sendRedirect("admin-login.jsp");
            return;
        }

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String difficulty = request.getParameter("difficulty");
        String answer = request.getParameter("correct_answer");

        int xp = Integer.parseInt(request.getParameter("xp"));

        String sql = "INSERT INTO questions "
                + "(title, description, difficulty, correct_answer, xp) "
                + "VALUES (?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, title);
            ps.setString(2, description);
            ps.setString(3, difficulty);
            ps.setString(4, answer);
            ps.setInt(5, xp);

            int result = ps.executeUpdate();

            if (result > 0) {
                response.sendRedirect("add-question.jsp?success=true");
            } else {
                response.getWriter().println("Question Not Added!");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());
        }
    }
}
