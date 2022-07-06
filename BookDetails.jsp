<%@page import="com.beans.AddBook"%>
<%@page import="com.beans.AddStudents"%>
<%@page import="com.Dao.SelectBookDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BookDetails</title>
  <link rel="stylesheet" href="table.css">
</head>
<body>
<a href="AddBooks.html">Add Books</a>
<table border="1" cellspacing="0" align="center">
<tr>
<th>BookId</th>
<th>BookName</th>
<th>Author</th>
<th>Publisher</th>
<th>Remove</th>
<%
 List<AddBook> list=SelectBookDetails.getallbook();
for(AddBook e:list){
	out.print("<tr><td>"+e.getId()+"</td><td>"+ e.getBookname()+"</td></td><td>"+ e.getBookauthor()+"</td><td>"+ e.getBookpublisher()+"<td><a href='Remove.jsp?id="+e.getId()+"'>Remove</a></td></tr>");	
}

%>
</tr>

</table>
</body>
</html>