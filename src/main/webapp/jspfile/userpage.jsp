<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
		<%@ page import= "java.sql.*" %>
	<%
    String username  = (String) session.getAttribute("Username");
    String role= (String) session.getAttribute("Role");  
    String newspaper= (String) session.getAttribute("newspaper");
    String comment= (String) session.getAttribute("comment");
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/press","root","Hariom@123");
%>
