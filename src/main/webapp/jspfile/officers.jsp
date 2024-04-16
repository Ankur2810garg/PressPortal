<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.io.*, java.sql.*,java.sql.Date "%>
<%@ include file="userpage.jsp"%>

<html>
<head>
<title>Officers Page</title>
</head>
<body>
	<h1 style="text-align: center;">District News Portal</h1>
	<p>
		User Name:
		<%=(String) session.getAttribute("Username")%></p>
	<p>
		Role:
		<%=(String) session.getAttribute("Role")%></p>

	<table height="500" width="1000" border="1px solid black">
	<tr>
		<th>id</th>
		<th>News Date</th>
		<th>File Name</th>
		<!-- <th>File Data</th> -->
		<th>News Paper Name</th>
		<th>Comments</th>
	</tr>
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
    	String comment;
    	try
		{
	    	pstmt=conn.prepareStatement("select * from dipro"); 
       		rs=pstmt.executeQuery();
       		while(rs.next())
       		{
       			filename= rs.getString("filename");
       			File file=new File(filename);
           		FileOutputStream fos=new FileOutputStream(file);
           		blob=rs.getBlob("filedata");
           		b=blob.getBytes(1,(int)blob.length());
           		fos.write(b);
           		fos.close();
    %>
	<tr>
		<td><a href="https://www.google.com/" target="_blank"><%= rs.getString("id")%></a></td>
		<td><%= rs.getString("newsdate")%></td>
		<td><%= rs.getString("filename")%></td>
		<%-- <td><%= rs.getString("filedata")%></td> --%>
		<td><%= rs.getString("newspaper")%></td>
		<td><%= rs.getString("remarks")%></td>
	</tr>
	<%
	} 
	%>
	</table>
	<%
	}
		catch (Exception ex) {
		System.out.println(ex);
		}

List<String> results = new ArrayList<String>();
File[] files = new File("E:/wipro test/").listFiles();

for (File file : files) {
    if (file.isFile()) {
        results.add(file.getName());
    }
}
%>
</body>
</html>