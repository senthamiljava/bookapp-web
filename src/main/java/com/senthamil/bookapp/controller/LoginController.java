package com.senthamil.bookapp.controller; 

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.senthamil.bookapp.dao.UserDAO;
import com.senthamil.bookapp.model.User;

@WebServlet("/LoginController") 
public class LoginController extends HttpServlet { 

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("LoginController invoked");

		// Step 1: Get the form data
		String emailId = request.getParameter("email_id");
		String password = request.getParameter("user_password");
		System.out.println("email_id:" + emailId + ",userPasswor:" + password);

		// Step 2: Call dao
		UserDAO dao = new UserDAO();
		User user = dao.validate(emailId, password);

		// Step 3: Check if user is valid
		if (user != null) {
			System.out.println("Valid User " + user);
			HttpSession session = request.getSession();
			session.setAttribute("LOGGED_IN_USER", user);
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		} else {
			System.out.println("invalid user");
			request.setAttribute("msg", "Invalid username or password");
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);
		}

	}
}
