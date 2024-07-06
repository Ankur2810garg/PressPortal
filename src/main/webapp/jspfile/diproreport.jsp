<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*, java.io.*, java.sql.*,java.sql.Date "%>
<%@ include file="userpage.jsp"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="../css/bootstrap.min.css" />
    <script src="../js/jquery-3.6.0.min.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
    <style>
    .text-overlay {
      position: absolute;
      top: 70vh;
      left: 50vw;
      transform: translate(-50%, -50%);
      z-index: 1;
      color: white;
    }
    </style>
  </head>

  <body>
      <img class="img-fluid"
          src="https://images.unsplash.com/photo-1709098951208-f758e4718d97?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"/>
      <div class="text-overlay">
       	<h1 style="text-align: center;">District News Portal</h1>
	<p>
		User Name:
		<%=(String) session.getAttribute("Username")%></p>
	<p>
		Role:
		<%=(String) session.getAttribute("Role")%></p>

<div class="container">
  <div class="table-responsive">          
  <table class="table">
    <thead>
                      <tr>
                        <th scope="col">id</th>
                        <th scope="col">News Date</th>
                        <th scope="col">File Name</th>
                        <!--<th scope="col">File Data</th>-->
                        <th scope="col">News Paper Name</th>
                        <th scope="col">Comment</th>
                      </tr>
                    </thead>
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
<tbody>
      <tr>
		<td id="%= rs.getString("id")%"><%= rs.getString("id")%></td>
		<td><%= rs.getString("newsdate")%></td>
		<td><%= rs.getString("filename")%></td>
		<%-- <td><%= rs.getString("filedata")%></td> --%>
		<td><%= rs.getString("newspaper")%></td>
		<td><%= rs.getString("remarks")%></td>
	</tr></tbody>
  
	<%
	} 
	%>
	</table>
	</div>
              </div>
            
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
      </div>
  </body>
</html>