<%@page import="java.sql.*"%>
<%@page import="com.bridgelabz.user.service.UserDao"%>
<%@page import="com.bridgelabz.user.service.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
<%
   String id = request.getParameter("id");
   int v = Integer.parseInt(id);
   UserDao ud=new UserDaoImpl();
   ResultSet rs=ud.update(v);
   try
   {
       while(rs.next())
       {%>
       
         <form action="./edit" method="post">
                    
                   
             <div>
                 <input type="text" name="ufname" value="<%= rs.getString(1)%>"></input>
             </div><br>    
             <div>   
                 <input type="text" name="ulname" value="<%= rs.getString(2)%>"></input>
             </div><br> 
             <div>   
                 <input type="text" name="umobile" value="<%= rs.getString(3)%>"></input>
             </div><br> 
             <div>   
                 <input type="text" name="uemail" value="<%= rs.getString(4)%>"></input>
             </div><br> 
            <div>   
                 <input type="text" name="uaddr" value="<%= rs.getString(5)%>"></input>
             </div><br>
             <div>   
                 <input type="text" name="upin" value="<%= rs.getString(6)%>"></input>
             </div><br>
             <div>   
                 <input type="password" name="upwd" value="<%= %>"></input>
             </div><br>
              <div>
                 <input type="text" name="sid" value="<%= rs.getString(8)%>"></input>
             </div><br>    
             <div>
             <div>
                  <input type="submit" class="button" value="Update">
             </div> 
             
        </form>    
    	   
      <%}
       
       
   }catch(Exception e){out.println(e);}
%>
</body>
</html>