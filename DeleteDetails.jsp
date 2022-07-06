<%@page import="com.Dao.DeleteDetails"%>
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
String id = request.getParameter("id");
int sid = Integer.parseInt(id);
DeleteDetails delete = new DeleteDetails();
delete.DeleteDetails(sid);
response.sendRedirect("ShowDetails.jsp");

%>
</body>
</html>