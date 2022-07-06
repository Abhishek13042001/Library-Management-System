<%@page import="com.beans.AddBook"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.ShowUserBook2"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Book</title>
<link rel="stylesheet" href="table.css">
</head>
<body>
<table border="1" cellspacing="0" align="center">
<tr>
<th>Book Id</th>
<th>Book Name</th>
<th>Book Author</th>
<th>Book Publisher</th>
</tr>
<%
int id = Integer.parseInt(request.getParameter("id"));
ShowUserBook2 user = new ShowUserBook2();
 List<AddBook> list=user.AddBook(id);
for(AddBook e:list){
	out.print("<tr><td>"+e.getId()+"</td><td>"+ e.getBookname()+"</td><td>"+ e.getBookauthor()+"</td><td>"+ e.getBookpublisher()+"</td>");	
}

%>
</table>
</body>
</html>