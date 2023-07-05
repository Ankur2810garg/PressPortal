<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.io.*, java.sql.*,java.sql.Date " %>
<%@ include file="userpage.jsp" %>		
	<html>
<head>
<title>Officers Page</title>
</head>
<body>
<h1 style="text-align: center;">District News Portal</h1>
<p>
	User Name:
	<%=username%></p>
<p>
	Role:
	<%=role%></p>
	
<%
	ResultSet rs;
	PreparedStatement pstmt;
	byte b[];
    Blob blob;
    String filename;
    try
	{
		pstmt=conn.prepareStatement("select filename, filedata from dc"); 
        rs=pstmt.executeQuery();
        while(rs.next()){
        	filename= rs.getString("filename");
        	File file=new File("C:/Users/Ankur/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/PressPortal/images/"+filename+".jpeg");
            FileOutputStream fos=new FileOutputStream(file);
            blob=rs.getBlob("filedata");
            b=blob.getBytes(1,(int)blob.length());
            fos.write(b);
            fos.close();
       %>     
            
     <%   }
	}
		catch (Exception ex) {
		System.out.println(ex);
		}
	
%>

<%
List<String> results = new ArrayList<String>();
File[] files = new File("C:/Users/Ankur/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/PressPortal/images/").listFiles();

for (File file : files) {
    if (file.isFile()) {
        results.add(file.getName());
    }
}
Iterator<?> itr =  results.iterator();
while(itr.hasNext())
{
%>
	
	<IMG SRC="C:\Users\Ankur\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\PressPortal\images\
	<%=itr.next()%>"  height="100" width="100"/>

<%
}
%>
</body>
</html>