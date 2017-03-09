package com.senthamil.bookapp.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.senthamil.bookapp.dao.UserDAO;
import com.senthamil.bookapp.model.User;

@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Register Controller-> doPost ");

		//GEt the form data
		String name = request.getParameter("name");
		String emailId = request.getParameter("email_id");
		String userPassWord = request.getParameter("user_password");
		String mobileNoStr = request.getParameter("mobileno");
		
		//Convert String to Long
		Long mobileNo = Long.valueOf(mobileNoStr);
		
		//Store form fields in a Model Object
		User user = new User();
		user.setName(name);
		user.setEmailId(emailId);
		user.setPassword(userPassWord);
		user.setMobileNo(mobileNo);
		
		System.out.println(user);
		
		//Call dao insert
		UserDAO dao = new UserDAO();
		dao.save(user);
		
		//Redirect to index.jsp
		response.sendRedirect("index.jsp?msg=Successfully Registered");
		
	}

}
