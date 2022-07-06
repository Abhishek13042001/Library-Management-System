<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
    <%@page import="com.Dao.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int id = Integer.parseInt(request.getParameter("id"));
String name= request.getParameter("name");
String email=request.getParameter("email");
String password = request.getParameter("password");
String address = request.getParameter("address");
String city = request.getParameter("city");
Connection con = Connection1.connect();
PreparedStatement ps = con.prepareStatement("update crud1 set name=? , email=? , password=?,address=? , city=? where id=?");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,address);
ps.setString(5, city);
ps.setInt(6, id);
int i = ps.executeUpdate();
if(i>0){
	response.sendRedirect("ShowDetails.jsp");
}
else{
	out.println("Error");
}
%>
</body>
</html>