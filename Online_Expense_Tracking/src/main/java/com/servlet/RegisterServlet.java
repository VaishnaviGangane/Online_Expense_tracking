package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/userRegister")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String fullName = req.getParameter("fullname");
        String email = req.getParameter("email");
        String password = req.getParameter("pwd");
        String about = req.getParameter("about");

        User user = new User(fullName, email, password, about);

        // Save User object to the database
        boolean saved = UserDAO.saveUser(user);
        HttpSession session = req.getSession();
        if (saved) {
            // If registration is successful, set success message
            session.setAttribute("msg", "Registration successful!");
            resp.sendRedirect("register.jsp");
        } else {
            // If registration fails, set error message
            session.setAttribute("msg", "Registration failed. Please try again.");
            resp.sendRedirect("register.jsp");
        }
        
        // Redirect the user back to the registration page
        
    }
}
