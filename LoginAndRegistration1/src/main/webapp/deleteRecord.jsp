<%@page import="com.bridgelabz.user.service.UserDao"%>
<%@page import="com.bridgelabz.user.service.UserDaoImpl"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <title>Delete</title>
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
    UserDao ud=new UserDaoImpl();
    int uid=Integer.parseInt(request.getParameter("uid"));
    String status=ud.delete(uid);
    if(status.equals("success"))
    {
    ResultSet rs=ud.display();
        
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
        <%}
    }else
    {
    	RequestDispatcher rd=request.getRequestDispatcher("delete.jsp");
    	rd.forward(request,response);
    }
        %>
        
        </table>
         
          <h3><a href="index.jsp">Home</a></h3>    
    </body>
    
    
    
</html>