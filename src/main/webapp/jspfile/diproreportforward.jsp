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
<form action="../jspfile/diproreportforwarddept.jsp" method="post">
	<table height="150" width="1000" border="1px solid black">
	<tr>
		<th>id</th>
		<th>News Date</th>
		<th>File Name</th>
		<!-- <th>File Data</th> -->
		<th>News Paper Name</th>
		<th>Comment</th>
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
    	String comments;
    	try
		{
			String newsid="9";
	    	pstmt=conn.prepareStatement("select * from dipro where id="+newsid); 
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
		<td><input type="text" name="id" hidden value="<%=rs.getString("id")%>"><%=rs.getString("id")%></td>
		<td><input type="text" name="newsdate" hidden value="<%= rs.getString("newsdate")%>"><%= rs.getString("newsdate")%></td>
		<td><input type="text" name="filename" hidden value="<%= rs.getString("filename")%>"><%= rs.getString("filename")%></td>
		<%-- <td><%= rs.getString("filedata")%></td> --%>
		<td><input type="text" name="newspaper" hidden value="<%= rs.getString("newspaper")%>"><%= rs.getString("newspaper")%></td>
		<td><input type="text" name="comment"></td>
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
%>
<tr>
<td>Forward to Department Name</td>
<select name="departname">
	<option selected>Open this select menu</option>
	<option value="Animal Husbandry">Animal Husbandry</option>
	<option value="Food and Supply Department">Food and Supply Department</option>
</select>
</tr>
<br>
<input type="Submit">
</form>
</body>

</html>