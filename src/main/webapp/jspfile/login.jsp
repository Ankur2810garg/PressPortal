<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login Page</title>
<link href="../css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<script src="../js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<h1 style="text-align: center;">District News Portal</h1>
	<form action="valid.jsp" method="post">

		<div class="mb-3 row">
			<label for="username" class="col-sm-2 col-form-label">User
				Name</label>
			<div class="col-sm-3">
				<input class="form-control" type="text" id="username"
					name="username">
			</div>
		</div>
		<div class="mb-3 row">
			<label for="password" class="col-sm-2 col-form-label">Password</label>
			<div class="col-sm-3">
				<input type="password" class="form-control" id="password"
					name="password">
			</div>
		</div>
		<div class="mb-3 row">
			<label for="role" class="col-sm-2 col-form-label">Role</label>
			<div class="col-sm-3">
				<select class="form-select form-select-mb mb-3" id="role"
					name="role">
					<option selected>Open this select menu</option>
					<option value="DC">DC</option>
					<option value="ADC">ADC</option>
					<option value="CTM">CTM</option>
					<option value="DIO">DIO</option>
					<option value="SDM">SDM</option>
					<option value="SP">SP</option>
					<option value="DIPRO">DIPRO</option>

				</select>
			</div>
		</div>
		<div class="col-auto">
			<button type="submit" class="btn btn-primary mb-3">Submit</button>
			<button type="submit" class="btn btn-primary mb-3">Reset</button>

		</div>
	</form>
</body>
</html>
