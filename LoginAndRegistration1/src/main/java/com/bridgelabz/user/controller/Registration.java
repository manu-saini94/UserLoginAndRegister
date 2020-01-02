package com.bridgelabz.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bridgelabz.user.service.UserDao;
import com.bridgelabz.user.service.UserDaoImpl;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/reg")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=null;
		 String status="";
		try
		{
	
		String uemail=request.getParameter("uemail");
		String upwd=request.getParameter("upwd");
		String ufname=request.getParameter("ufname");
		String ulname=request.getParameter("ulname");
	    String umobile=request.getParameter("umobile");
		String uaddr=request.getParameter("uaddr");
		String upin=request.getParameter("upin");
		  
	   	  UserDao ud=new UserDaoImpl();
	   	  status=ud.register(ufname,ulname,umobile,uaddr,upin,uemail,upwd);
	   	  
	   	 if(status.equals("success"))
	   	 {
	   	  session=request.getSession(); 
	   	  session.setAttribute("uemail", uemail);
	   	  session.setAttribute("upwd", upwd);
	   	  RequestDispatcher rd=request.getRequestDispatcher("allusers.jsp");
	      rd.forward(request, response);
	     }    
	     else  
	    if(status.equals("existed"))
	    {
	    	 RequestDispatcher rd=request.getRequestDispatcher("regexist.jsp");
		      rd.forward(request, response);
	    }
	    else
	    {
	    	 RequestDispatcher rd=request.getRequestDispatcher("regfail.jsp");
		      rd.forward(request, response);
	    	
	   	 } 
		}
	   	 catch(Exception e)
		{
	     e.printStackTrace();
		}
		 }
	
	}


