<%@page import="com.classCreation.Login1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action="Login.jsp">
  <div class="container">
  <link rel="stylesheet" type="text/css" href="style.css" />
    <h1>Login</h1>
    
    <hr>
<label for="email"><b>Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" id="email" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" id="password" required>
 <hr>
  <button type="submit" class="loginbtn">Login</button>
  
  
  <div class=" container register12">
    <p>Do not have Account?  <a href="index.html">Registration
    </a></p>
  </div>
  </div>
  </form>

<%

Login1 login=  new Login1();
  String email=request.getParameter("email");
  String password = request.getParameter("password");
  String status=login.Login(email, password);
  if(status!=(null)){
	response.sendRedirect("ShowDetails.jsp");
	  
  }
  else{
	  out.println("Error Try Again");
  }


%>




</body>
</html>