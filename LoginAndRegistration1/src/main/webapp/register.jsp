<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>

<meta charset="UTF-8">
<title>Register Page</title>
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
  width: 10%;
  height:5%;
  font-size: 15px;
}

label
{
	color:black;
        font-size: 25px;
        font-weight: bold;
}

 </style>
</head>
<body>

<div class="container">

    <h1>Register</h1>
    <div>
        <form class="form" name="myForm" action="reg" method="post" onsubmit="return validateForm()">
                    
             <div>
                 <label>First Name:</label>
                 <input type="text" name="ufname" id="ufname"></input>
                 <span id="r_fname" class="text-danger font-weight-bold"></span>
             </div><br>    
             <div>   
                 <label>Last Name:</label>
                 <input type="text" name="ulname" id="ulname"></input>
             </div><br> 
             <div>   
                 <label>Mobile Number:</label>
                 <input type="text" name="umobile" id="umobile"></input>
             </div><br>              
             <div>   
                 <label>Permanent Address:</label>
                 <input type="text" name="uaddr" id="uaddr"></input>
             </div><br>
             <div>   
                 <label>Pincode:</label>
                 <input type="text" name="upin" id="upin"></input>
             </div><br>
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
<script type="text/javascript">
            
function validateForm()
{
	  var ufname = document.forms["myForm"]["ufname"].value;
	  if (ufname == "") 
	  {
	    alert("Please fill First Name field");
	    return false;
	  }
	  if (!isNaN(ufname)) 
	  {
	    alert("Alphabets only First Name field");
	    return false;
	  }
	  
	  //////////////////////////////////////////////////////
	  var ulname = document.forms["myForm"]["ulname"].value;
	  if (ulname == "") 
	  {
	    alert("Please fill Last Name field");
	    return false;
	  }
	  if (!isNaN(ulname)) 
	  {
	    alert("Alphabets only Last Name field");
	    return false;
	  }
	  
	  ////////////////////////////////////////////////////////
	  var umobile = document.forms["myForm"]["umobile"].value;
	  if (umobile == "") 
	  {
	    alert("Please fill Mobile Number field");
	    return false;
	  }
	  if (isNaN(umobile)) 
	  {
	    alert("Number only Mobile Number field");
	    return false;
	  }
	  
	  ///////////////////////////////////////////////////////
	  var uemail = document.forms["myForm"]["email"].value;
	  var reg = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
	  if (uemail == "") 
	  {
	    alert("Please fill email field");
	    return false;
	  }
	  if (reg.test(uemail) == false) 
	  {
	    alert("Enter Valid email");
	    return false;
	  }
	  
	  //////////////////////////////////////////////////////////////
	  var uaddr = document.forms["myForm"]["uaddr"].value;
	  if (uaddr == "") 
	  {
	    alert("Please fill Permanent Address field");
	    return false;
	  }
	  
	  ///////////////////////////////////////////////////////////////
	  var upin = document.forms["myForm"]["upin"].value;
	  if (upin== "") 
	  {
	    alert("Please fill Pincode field");
	    return false;
	  }
	  if (isNaN(upin)) 
	  {
	    alert("Number only Pincode field");
	    return false;
	  }
	  
	  
	  /////////////////////////////////////////////////////////////////
	  var upwd = document.forms["myForm"]["upwd"].value;
	  if (upwd == "") 
	  {
	    alert("Please fill Username field");
	    return false;
	  }
	  
}
            
</script>
</body>
</html>