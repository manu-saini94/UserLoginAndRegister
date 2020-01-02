<%@page import="com.bridgelabz.user.service.UserDao"%>
<%@page import="com.bridgelabz.user.service.UserDaoImpl"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

   
<html>
    
    <head>
        <title>Details</title>
    </head>
    
    <body>
    <div>
       <form action="/logout" method="POST">
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
    </tr>
    
    <%
        UserDao ud=new UserDaoImpl();
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
            
        <%}%>
        
        </table>
              
    </body>
    
    
    
</html>