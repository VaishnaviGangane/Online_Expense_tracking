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
@WebServlet("/login")
public class LoginServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email=req.getParameter("email");
		
		String password=req.getParameter("pwd");
		
		User u=UserDAO.login(email, password);
		HttpSession session=req.getSession();
		if(u==null)
		{
			session.setAttribute("msg", "invalid email and password");
			resp.sendRedirect("login.jsp");
			
			
		}
		else
		{
			session.setAttribute("loginuser", u);
			resp.sendRedirect("user/Home.jsp");
		}
	}
}
