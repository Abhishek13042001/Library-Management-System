<%@page import="com.Dao.SaveDetails1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%


 String name = request.getParameter("name");
	  String email = request.getParameter("email");
	  String password = request.getParameter("password");
	  String city = request.getParameter("City");
	  String address=request.getParameter("address");
	  AddStudents students = new AddStudents();
	  students.setName(name);
	  students.setEmail(email);
	  students.setPassword(password);
	  students.setCity(city);
	  students.setAddress(address);
	 int save= SaveDetails1.Save(students);
	  if(save>0){
		  
	      response.sendRedirect("Login.jsp");
	  }
	  else{
		  out.println("Error");
	  }
		
		%>
</body>
</html>