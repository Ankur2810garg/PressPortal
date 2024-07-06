<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.io.*, java.sql.*,java.text.SimpleDateFormat "%>
<%@ include file="userpage.jsp"%>

<html>
<head>
<title>Forward Page</title>
</head>
<body>
	<h1 style="text-align: center;">District News Portal</h1>
	<p>
		User Name:
		<%=(String) session.getAttribute("Username")%></p>
	<p>
		Role:
		<%=(String) session.getAttribute("Role")%></p>

<%

String id = request.getParameter("id");

String news_date= request.getParameter("newsdate");
SimpleDateFormat sdf1 = new SimpleDateFormat("dd-mm-yyyy");
java.util.Date date = sdf1.parse(news_date);
java.sql.Date newsdate = new java.sql.Date(date.getTime());  

String filename = request.getParameter("filename");
String newspapername = request.getParameter("newspaper");
String remarks = request.getParameter("comment");
String deptname= request.getParameter("departname");

System.out.println("Id: " + id);
System.out.println("News Date: " + newsdate);
System.out.println("File Name: " + filename);
System.out.println("News Paper Name: " + newspapername);
System.out.println("Comment: " + remarks);


if(deptname.equals("Animal Husbandry"))
{
deptname="animalhusbandry";
}

if(deptname.equals("Food and Supply Department"))
{
deptname="dfsc";
}

System.out.println("Dept Name: " + deptname);
try
{
PreparedStatement pstmt;
String sqlquery = "insert into " + deptname + " values(?,?,?,?,?)";  
System.out.println(sqlquery);
pstmt = conn.prepareStatement(sqlquery);
pstmt.setString(1, id);
pstmt.setDate(2, newsdate);
pstmt.setString(3, filename);
pstmt.setString(4, newspapername);
pstmt.setString(5, remarks);
pstmt.execute();
out.print("successfully uploaded");
conn.close();
pstmt.close();
}
catch(Exception e)
{
System.out.println(e);
}

%>
</body>

</html>