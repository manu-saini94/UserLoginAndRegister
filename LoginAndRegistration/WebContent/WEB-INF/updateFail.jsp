<%@page import="com.bridgelabz.user.service.UserDao"%>
<%@page import="com.bridgelabz.user.service.UserDaoImpl"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <title>Update</title>
    </head>
    
    <body>
    <h3>Updation has Failed!</h3>
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
                <td> <a href="editRecord.jsp?uid=<%= rs.getString(8)%>">Edit</a> </td>
           </tr>
        <%}%>
        
        </table>
              
    </body>
    
    
    
</html>