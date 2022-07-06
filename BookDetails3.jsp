<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Dao.Connection1"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int i=Integer.parseInt(request.getParameter("Book_id"));
int j =Integer.parseInt(request.getParameter("student_id"));
Connection con = Connection1.connect();
PreparedStatement ps = con.prepareStatement("insert into ShowBook(user_id,book_id) values(?,?)");
ps.setInt(1, j);
ps.setInt(2, i);
ps.execute();
response.sendRedirect("ShowDetails.jsp");


%>
</body>
</html>