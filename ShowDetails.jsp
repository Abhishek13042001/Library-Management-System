<%@page import="java.util.ArrayList"%>
<%@page import="com.beans.AddStudents"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.SelectDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Details</title>
  <link rel="stylesheet" href="table.css">
</head>
<body>
<a href="ShowDetailsBook2.jsp">Add User Book </a> &nbsp;
<a href="AddBooks.html">Add Books</a><br><br>
<table border="1" cellspacing="0">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Password</th>
<th>Address</th>
<th>City</th>
<th>Edit</th>
<th>Delete</th>
<th>Books Details</th>
</tr>
<%
List<AddStudents> select = SelectDetails.getAllStudents();
for(AddStudents e:select) {
	out.print("<tr><td>"+e.getId()+"</td><td>"+ e.getName()+"</td><td>"+ e.getEmail()+"</td><td>"+ e.getPassword()+"</td><td>"+e.getAddress()+"</td><td>"+ e.getCity()+"</td><td><a href='UpdateDetails.jsp?id="+e.getId()+"'>Edit</a></td> <td><a href='DeleteDetails.jsp?id="+e.getId()+"'>Delete</a></td><td><a href='ShowUserBook.jsp?id="+e.getId()+"'>BooksDetails</a></td></tr>");	
  
}


%>
</table>

</body>
</html>