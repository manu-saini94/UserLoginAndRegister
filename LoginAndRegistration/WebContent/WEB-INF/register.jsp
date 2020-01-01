<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        <form class="form" name="myForm" action="./reg" method="post" onsubmit="return validateForm()">
                    
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
                 <label>Area Pincode:</label>
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
	  var fname = document.forms["myForm"]["fname"].value;
	  if (fname == "") 
	  {
	    alert("Please fill First Name field");
	    return false;
	  }
	  if (!isNaN(fname)) 
	  {
	    alert("Alphabets only First Name field");
	    return false;
	  }
	  
	  //////////////////////////////////////////////////////
	  var lname = document.forms["myForm"]["lname"].value;
	  if (lname == "") 
	  {
	    alert("Please fill Last Name field");
	    return false;
	  }
	  if (!isNaN(lname)) 
	  {
	    alert("Alphabets only Last Name field");
	    return false;
	  }
	  
	  ////////////////////////////////////////////////////////
	  var mobile = document.forms["myForm"]["mobile"].value;
	  if (mobile == "") 
	  {
	    alert("Please fill Mobile Number field");
	    return false;
	  }
	  if (isNaN(mobile)) 
	  {
	    alert("Number only Mobile Number field");
	    return false;
	  }
	  
	  ///////////////////////////////////////////////////////
	  var email = document.forms["myForm"]["email"].value;
	  var reg = /^(?:[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&amp;'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$/;
	  if (email == "") 
	  {
	    alert("Please fill email field");
	    return false;
	  }
	  if (reg.test(email) == false) 
	  {
	    alert("Enter Valid email");
	    return false;
	  }
	  
	  /////////////////////////////////////////////////////////////
	    var parents = document.forms["myForm"]["parents"].value;
	  if (parents == "") 
	  {
	    alert("Please fill Parents Name field");
	    return false;
	  }
	  if (!isNaN(parents)) 
	  {
	    alert("Alphabets only Parents Name field");
	    return false;
	  }
	  
      /////////////////////////////////////////////////////////////
      
      var par_mobile = document.forms["myForm"]["par_mobile"].value;
	  if (par_mobile == "") 
	  {
	    alert("Please fill Parents Mobile Number field");
	    return false;
	  }
	  if (isNaN(par_mobile)) 
	  {
	    alert("Number only Parents Mobile Number field");
	    return false;
	  }
	  
	  ///////////////////////////////////////////////////////////
	  var cur_address = document.forms["myForm"]["cur_address"].value;
	  if (cur_address == "") 
	  {
	    alert("Please fill Current Address field");
	    return false;
	  }
	  
	  //////////////////////////////////////////////////////////////
	  var per_address = document.forms["myForm"]["per_address"].value;
	  if (per_address == "") 
	  {
	    alert("Please fill Permanent Address field");
	    return false;
	  }
	  
	  ///////////////////////////////////////////////////////////////
	  var pincode = document.forms["myForm"]["pincode"].value;
	  if (pincode == "") 
	  {
	    alert("Please fill Pincode field");
	    return false;
	  }
	  if (isNaN(pincode)) 
	  {
	    alert("Number only Pincode field");
	    return false;
	  }
	  
	  /////////////////////////////////////////////////////////////////
	  var username = document.forms["myForm"]["username"].value;
	  if (username == "") 
	  {
	    alert("Please fill Username field");
	    return false;
	  }
	  
	  /////////////////////////////////////////////////////////////////
	  var password = document.forms["myForm"]["password"].value;
	  if (username == "") 
	  {
	    alert("Please fill Username field");
	    return false;
	  }
	  
}
            
</script>
</body>
</html>