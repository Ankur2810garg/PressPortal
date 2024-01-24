<%@ page import="java.util.*, java.io.*, java.sql.*,java.sql.Date"%>
<%@ include file="userpage.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Upload</title>
</head>
<body>
	<%
	String newsresource = (String) session.getAttribute("newsresource");

	String comment = (String) session.getAttribute("comment");
	%>
	<p>
		Comment / Remarks:<%=comment%>
	</p>
	<p>
		Newspaper Name:<%=newsresource%>
	</p>

	<%
	String filename = request.getParameter("message");
	filename= "C:/Users/Ankur/OneDrive/Desktop/"+filename;
System.out.println("filename" + filename);
	FileInputStream fis = new FileInputStream(filename);

	Calendar calendar = Calendar.getInstance();
	Date startDate;
	startDate = new java.sql.Date(calendar.getTime().getTime());
	ResultSet rs;
	boolean check;
	int id = 0;
	PreparedStatement pstmt;
	try {
		pstmt = conn.prepareStatement("select id from dipro");
		rs = pstmt.executeQuery();
		check = rs.next();
		if (check == false) {
			id = 1;
			pstmt = conn.prepareStatement("insert into dipro values(?,?,?,?,?,?)");
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
		} else {
			pstmt.close(); // why it is write here...what is the purpose of this statement.
			pstmt = conn.prepareStatement("select max(id) from dipro");
			rs = pstmt.executeQuery();
			while (rs.next()) {
		id = Integer.parseInt(rs.getString(1));
			}
			id = id + 1;
			pstmt = conn.prepareStatement("insert into dipro values(?,?,?,?,?,?)");
			pstmt.setInt(1, id);
			pstmt.setDate(2, startDate);
			pstmt.setString(3, filename);
			System.out.println("3");
			pstmt.setBlob(4, fis);
			System.out.println("4");
			pstmt.setString(5, comment);
			pstmt.setString(6, newsresource);
			pstmt.execute();
			out.print("successfully uploaded");
			conn.close();
			pstmt.close();
		}
	} catch (Exception ex) {
		System.out.println(ex);
	}
	%>
	<p> <a href="diproreport.jsp"><strong>Click Here to see the reports. </strong></a></p>
</body>
</html>