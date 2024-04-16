<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DIPRO Page</title>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script src="../js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<h1 style="text-align: center;">District News Portal</h1>

	<p>
		User Name:
		<%=(String) session.getAttribute("Username")%></p>
	<p>
		Role:
		<%=(String) session.getAttribute("Role")%></p>

	<!-- when i use encytpe , changes the value to null otherwise working fine. -->
	<!-- <form action="dipro_code.jsp" method="post" enctype="multipart/form-data"> -->
	<form action="../jspfile/dipro_code.jsp" method="post">

		<div class="mb-3 row">
			<label for="role" class="col-sm-2 col-form-label">Source of
				News Paper</label>
			<div class="col-sm-3">
				<select class="form-select form-select-mb mb-3" name="newsresource">
					<option selected>Open this select menu</option>
					<option value="Dainik Jagran">Dainik Jagran</option>
					<option value="Dainik Bhaskar">Dainik Bhaskar</option>
					<option value="Punjab Kesari">Punjab Kesari</option>
					<option value="Hindustan Time">Hindustan Time</option>
					<option value="Nav Bharat Times">Nav Bharat Times</option>
					<option value="Amar Ujala">Amar Ujala</option>
					<option value="Times of India">Times of India</option>
					<option value="The Hindu">The Hindu</option>
				</select>
			</div>
		</div>

		<div class="form-group">
			<label for="comment">DIPRO Remarks</label>
			<textarea class="form-control" id="comment" name="comment" rows="3"></textarea>
		</div>

		<div class="col-auto">
			<button type="submit" class="btn btn-primary mb-3">Submit</button>
			<button type="submit" class="btn btn-primary mb-3">Reset</button>
		</div>
	</form>

</body>
</html>