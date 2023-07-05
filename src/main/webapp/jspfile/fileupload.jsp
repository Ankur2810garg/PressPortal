<%@ page import="java.util.*, java.io.*, java.sql.*,java.sql.Date" %>
<%@ include file="userpage.jsp" %>	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File Upload</title>
</head>
<body>
<%
	String filename= request.getParameter("message");
	String filepath = getServletContext().getRealPath(filename);
	System.out.println("filepath"+filepath);
	String filetype = getServletContext().getMimeType(filename);
	if("application/pdf".equals(filetype))
	{
%>
		<p>Newspaper Name:<%=newspaper%></p>
		<p>Comment / Remarks:<%=comment%></p>
		<%
			InputStream fis = new FileInputStream(filepath);
			Calendar calendar = Calendar.getInstance();
			Date startDate;
			startDate = new java.sql.Date(calendar.getTime().getTime());
			ResultSet rs;
			boolean check;
			int id=0;
			PreparedStatement pstmt;
			try
			{
				pstmt = conn.prepareStatement("select id from dipro");
				rs = pstmt.executeQuery();
				check=rs.next();
				if(check==false)
				{
					id=1;
					pstmt=conn.prepareStatement("insert into dipro values(?,?,?,?,?,?)");
					pstmt.setInt(1,id);
					pstmt.setDate(2, startDate);
					pstmt.setString(3, filename);
					pstmt.setBlob(4, fis);
					pstmt.setString(5, comment);
					pstmt.setString(6, newspaper);
					pstmt.execute();
					out.print("successfully uploaded");  
					conn.close();
					pstmt.close();
				}
				else
				{
					pstmt.close(); // why it is write here...what is the purpose of this statement.
					pstmt = conn.prepareStatement("select max(id) from dipro");
					rs = pstmt.executeQuery();
					while(rs.next())
					{
						id = Integer.parseInt(rs.getString(1));
					}
					id=id+1;
					pstmt=conn.prepareStatement("insert into dipro values(?,?,?,?,?,?)");
					pstmt.setInt(1,id);
					pstmt.setDate(2, startDate);
					pstmt.setString(3, filename);
					pstmt.setBlob(4, fis);
					pstmt.setString(5, comment);
					pstmt.setString(6, newspaper);
					pstmt.execute();
					out.print("successfully uploaded");
					conn.close();
					pstmt.close();
				}
			}
			catch (Exception ex) 
			{
				System.out.println(ex);
			}
		}
		else
		{
			out.println("choose only pdf file");
		}
	%>
</body>
</html>