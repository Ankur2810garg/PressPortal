<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
    String username  = request.getParameter("username");
    String password  = request.getParameter("password");
    String role= request.getParameter("role");
    session.setAttribute("Username",username);
    session.setAttribute("Role",role);
    if (username.equals("dipro") && password.equals("dipro") && role.equals("DIPRO"))
	{
		response.sendRedirect("dipro.jsp");
	}       
	else
	{
		if(
			(username.equals("dc") && password.equals("dc") && role.equals("DC"))  ||
			(username.equals("adc")&& password.equals("adc")&& role.equals("ADC")) ||
			(username.equals("sp") && password.equals("sp") && role.equals("SP"))  ||
			(username.equals("sdm")&& password.equals("sdm")&& role.equals("SDM")) ||
			(username.equals("ctm")&& password.equals("ctm")&& role.equals("CTM")) ||
			(username.equals("dio")&& password.equals("dio")&& role.equals("DIO"))
			
		  )
		{
			response.sendRedirect("officers.jsp");	
		}		
	}

     

%>
