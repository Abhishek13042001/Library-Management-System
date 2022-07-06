<%@page import="com.beans.AddStudents"%>
<%@page import="com.Dao.UpdateDetails1"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="container">
<form action="Update2.jsp">
<%
int id =Integer.parseInt(request.getParameter("id"));
UpdateDetails1 update = new UpdateDetails1();
AddStudents s=update.Update(id);
out.print("<tr><td></td><td><input type='hidden' name='id' value='"+s.getId()+"'/></td></tr>");
//out.print("<tr><td>Name:</td><td><input type='text' name='name' value='"+s.getName()+"'size='100%'/></td></tr>");
out.println("Name<input type='text' name='name' value='"+s.getName()+"'");
out.println("<br></br>");
out.println("Email<input type='email' name='email' value='"+s.getEmail()+"'");
out.println("<br></br>");
out.println("Password<input type='password' name='password' value='"+s.getPassword()+"'");
out.println("<br></br>");
out.println("Address<input type='text' name='address' value='"+s.getAddress()+"'");
out.println("<br></br>");
out.println("<tr><td>City</td><td>");
out.print("<select name='city' style='width:150px'>");
out.print("<option>Options</option>");
out.print("<option>Bhopal</option>");
out.print("<option>Indore</option>");
out.print("<option>Mumbai</option>");
out.print("<option>Delhi</option>");
out.print("<option>Other</option>");
out.print("</select>");


%>
 <button type="submit" class="loginbtn">Update</button>


</form>
</div>


</body>
</html>