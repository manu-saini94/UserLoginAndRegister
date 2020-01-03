package com.bridgelabz.user.controller;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bridgelabz.user.service.UserDao;

/**
 * Servlet Filter implementation class LoginFilter
 */
public class LoginFilter implements Filter {

  
	public void destroy() {

	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req=(HttpServletRequest)request;
		HttpServletResponse res=(HttpServletResponse)response;
		String uemail= req.getParameter("uemail");
		String upwd= req.getParameter("upwd");
	   HttpSession s2=req.getSession();
	   RequestDispatcher rd=null;
	   
	
		if(uemail == null || upwd == null)
		{
			res.sendRedirect("login.jsp");
		}
		else
		chain.doFilter(request, response);

	}
	
	
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
