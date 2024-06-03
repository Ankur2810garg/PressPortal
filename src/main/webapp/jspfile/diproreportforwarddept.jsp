<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.io.*, java.sql.*,java.sql.Date "%>
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
ResultSet rs;
		PreparedStatement pstmt;
		byte b[];
    	Blob blob;
    	String id;
    	String newsdate;
    	String filename;
    	String filedata;
    	String newspaper;
    	String comments;
    	try
		{
		pstmt = conn.prepareStatement("insert into dc values(?,?,?,?,?,?,?)");
			pstmt.setInt(1, id);
			pstmt.setDate(2, startDate);
			pstmt.setString(3, filename);
			pstmt.setBlob(4, fis);

			pstmt.setString(5, comment);
			pstmt.setString(6, newsresource);
			pstmt.execute();
			out.print("successfully uploaded");
			conn.close();
			pstmt.close();

%>
</body>

</html>