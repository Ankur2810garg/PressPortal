<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
String newsresource  = request.getParameter("newsresource");
System.out.println(newsresource);
String comment= request.getParameter("comment");
System.out.println(comment);

    session.setAttribute("newspaper",newsresource);
    session.setAttribute("comment",comment);
    response.sendRedirect("dipro_code.jsp");
   %>
