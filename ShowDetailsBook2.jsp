<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.Dao.SelectBookDetails"%>
<%@page import="com.beans.AddBook"%>
<%@page import="com.beans.AddStudents"%>
<%@page import="java.util.List"%>
<%@page import="com.Dao.SelectDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="BookDetails3.jsp"  >
<%
List<AddStudents> selectstudent = SelectDetails.getAllStudents();
List<AddBook> selectbook = SelectBookDetails.getallbook();
out.println("<select name='student_id'>");
out.println("<option>Select Student</option>");
for(AddStudents e:selectstudent){
	
	 
	  out.println("<option value='"+e.getId()+"'>"+e.getName()+"</option>");
	  
	  
}
out.println("</select>");
out.println("<select name='Book_id'>");
out.println("<option>Select Book</option>");
for(AddBook e:selectbook){
	
	 
	  out.println("<option value='"+e.getId()+"'>"+e.getBookname()+"</option>");
	  //System.out.println(e.getId());
	  
}
out.println("</select>");
%>
<button type="submit" class="registerbtn">Add Book</button>
</form>
</body>
</html>