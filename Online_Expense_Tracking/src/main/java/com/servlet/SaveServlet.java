package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ExpenseDao;
import com.dao.UserDAO;
import com.entity.Expense;
import com.entity.User;

@WebServlet("/processExpense")
public class SaveServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String title = req.getParameter("title");
        String date = req.getParameter("date");
        String time = req.getParameter("time");
        String description = req.getParameter("description");
        String price = req.getParameter("price");
        
        HttpSession session = req.getSession();
        User user=(User)session.getAttribute("loginuser");
        
        Expense ex  = new Expense(title,date,time,description,price,user);

        // Save User object to the database
        boolean saved = ExpenseDao.saveExpense(ex);
        
        
        if (saved) {
            // If registration is successful, set success message
            session.setAttribute("msg", "Expense added successfully");
            resp.sendRedirect("user/addexpense.jsp");
        } else {
            // If registration fails, set error message
            session.setAttribute("msg", "Something wrong on server");
            resp.sendRedirect("register.jsp");
        }
        
        // Redirect the user back to the registration page
        
    }
}