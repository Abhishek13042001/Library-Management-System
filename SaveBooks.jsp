<%@page import="com.Dao.SaveDetailsBook1"%>
<%@page import="com.beans.AddBook"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%
String name = request.getParameter("namebook");
String author = request.getParameter("author");
String publisher = request.getParameter("publisher");
AddBook book = new AddBook();
book.setBookname(name);
book.setBookauthor(author);
book.setBookpublisher(publisher);
SaveDetailsBook1 save = new SaveDetailsBook1();
save.save(book);
response.sendRedirect("ShowDetails.jsp");



%>
</head>
<body>

</body>
</html>