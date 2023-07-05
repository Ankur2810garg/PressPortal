<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link href="../css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script src="../js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="style.css" />
</head>
<body>

<form action = "fileupload.jsp" method = "post">

    <div class="container">
      <input type="file" id="my-file" />
      <p id="message" hidden></p>
      
      <input type="text" id="message1" name="message" hidden/><br>
    		<button type="submit" class="btn btn-primary mb-3">Submit</button>
			<button type="submit" class="btn btn-primary mb-3">Reset</button>
    </div>
  
	
	    <br />        
      </form>
<script src="script.js"></script>      
</body>
</html>