<%@page import="com.bridgelabz.user.service.UserDao"%>
<%@page import="com.bridgelabz.user.service.UserDaoImpl"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%!
HttpSession session=null;
ResultSet rs=null;
UserDao ud=null;
String value=null;
%>
<html>
    
    <head>
        <title>Profile Page</title>
    </head>
    <style>
    h3
    {
    text-align: center;
    color: red;
    font-weight: bold;
    font-size: 30px;
    } 
    </style>
    <body>
    <div>
       <form action="logout" method="POST">
          <input type="submit" value="Sign Out">
       </form>
    </div>
    
    <table border="1">
         
    <tr>
        <th>First Name:</th>
        <th>Last Name:</th>
        <th>Mobile:</th>
        <th>Permanent Address:</th>
        <th>Pin code:</th>
        <th>Email:</th>
        <th>Id:</th>
        <th></th>
    </tr>
    
    <%
   session=request.getSession();
    String val=(String)session.getAttribute("uemail");
    if(val!=null)
    {
    	ud=new UserDaoImpl();
    	rs=ud.profile(val);
    }
    else
    {
    value = (String)request.getParameter("uemail");
    ud=new UserDaoImpl();
    rs=ud.profile(value);
    }
        while(rs.next())
        { %>    
            
            <tr>
                <td><%= rs.getString(1)%></td>
                <td><%= rs.getString(2)%></td>
                <td><%= rs.getString(3)%></td>
                <td><%= rs.getString(4)%></td>
                <td><%= rs.getString(5)%></td>
                <td><%= rs.getString(6)%></td>
                <td><%= rs.getString(8)%></td>  
 
            </tr>
        <%}%>
        
        </table>
        <%
        session=request.getSession(); 
	   	  session.setAttribute("uemail",value);
	   	  
        %>
        <h3><a href="index.jsp">Home</a></h3>            
    </body>
    
    
    
</html>