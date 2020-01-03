<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Login</title>
  <style>
h1
{
	color: red;
        margin-top: 200px;
	text-align: center;
        font-size: 70px;
}
container
{
	hieght: 500px;
	width: 500px;
	padding: 60px;

}
form
{
	background-color: #f2f2f2;
	margin-top: 50px;
    text-align: center;
	
}
input
{
  color:black;
  width: 50%;
  height:35%;
  font-size: 20px;
}
label
{
color:black;
font-size: 30px;
font-weight:bold;
}
 
    h3
    {
    text-align: center;
    color: red;
    font-weight: bold;
    font-size: 30px;
    } 
 </style>
</head>
<body>
 <%
       if(session.getAttribute("uemail")!=null)
       {
        RequestDispatcher rd=request.getRequestDispatcher("userdetails.jsp");
		rd.forward(request, response);
       }
       else
       {
		%>
<div>
    <h1>Login</h1>
    <div>
    
        <form class="form" action="login" method="post">
                    
             <div>
                 <label>Email:</label>
                 <input type="text" name="uemail" id="uemail"></input>
             </div><br>
             <div>   
                 <label>Password:</label>
                 <input type="password" name="upwd" id="upwd"></input>
             </div><br>   
             <div>
                  <input type="submit" class="button" value="submit">
             </div> 
        </form>    
   </div>
</div>
  <h3><a href="index.jsp">Home</a></h3>    
  <%} %>
</body>
</html>