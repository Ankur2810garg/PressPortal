<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.io.*, java.sql.*,java.sql.Date " %>
<%@ include file="userpage.jsp" %>		

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Portal</title>
</head>
<body>
	<%
	ResultSet rs;
	PreparedStatement pstmt;
	byte b[];
    Blob blob;
    int i=1;
    
	try
	{
		pstmt=conn.prepareStatement("select filedata from dipro"); 
        rs=pstmt.executeQuery();
        while(rs.next()){
        	
        	File file=new File("C:/Users/Acer/eclipse-workspace/PressPortal/src/main/webapp/images/sample_image"+i+".jpeg");
            FileOutputStream fos=new FileOutputStream(file);
            blob=rs.getBlob("filedata");
            b=blob.getBytes(1,(int)blob.length());
            fos.write(b);
            i++;
            fos.close();
        }
   }
		catch (Exception ex) {
		System.out.println(ex);
		}
	finally
	{
		
	}
%>
</body>
</html>