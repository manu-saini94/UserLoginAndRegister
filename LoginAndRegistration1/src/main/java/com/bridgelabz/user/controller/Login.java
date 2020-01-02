package com.bridgelabz.user.controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bridgelabz.user.service.UserDao;
import com.bridgelabz.user.service.UserDaoImpl;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		{ 
			 HttpSession session=null;
			 String status=null;
			try
			{
		
			String uemail=request.getParameter("uemail");
   		    String upwd=request.getParameter("upwd");
			  
		   	  UserDao ud=new UserDaoImpl();
		   	  status=ud.checkLogin(uemail,upwd);
		   	  
		   	 if(status.equals("success"))
		   	 {
		   	  session=request.getSession(); 
		   	  session.setAttribute("uemail", uemail);
		   	  session.setAttribute("upwd", upwd);
		   	  RequestDispatcher rd=request.getRequestDispatcher("userdetails.jsp");
		      rd.forward(request, response);
		     }    
		     else  
		     response.sendRedirect("login.jsp");
		    } 
		   	 catch(Exception e)
			{
		     e.printStackTrace();
			}
			 }
	}
}
	


