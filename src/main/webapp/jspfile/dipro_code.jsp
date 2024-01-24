<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%-- <jsp:include page="../javafiles/Dipro_code.java" /> --%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>File Upload</title>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="../js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="style.css" />
</head>
<body>
<%
String newsresource = request.getParameter("newsresource");
String comment = request.getParameter("comment");
session.setAttribute("newsresource", newsresource);
session.setAttribute("comment", comment);

%> 

	<form action="fileupload.jsp" method="post">

		<div class="container">

			<input type='file' onchange='previewFile()' name="message"> <input
				type="submit" value="submit">
		</div>
		<br />

	</form>
	<script src="script.js"></script>
</body>
</html>