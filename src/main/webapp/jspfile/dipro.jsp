<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>District Press Portal - Blank</title>

    <!-- Custom fonts for this template-->
    <link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	    <div id="wrapper">

	        <!-- Sidebar -->
	        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

	            <!-- Sidebar - Brand -->
	            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../index.jsp">
	                <div class="sidebar-brand-icon rotate-n-15">
	                   <!-- <i class="fas fa-laugh-wink"></i>-->
	                </div>
	                <div class="sidebar-brand-text mx-3">District Press Portal</div>
	            </a>

	            <!-- Divider -->
	            <hr class="sidebar-divider my-0">

	            <!-- Nav Item - Dashboard -->
	            <li class="nav-item active">
	                <a class="nav-link" href="../index.jsp">
	                    <i class="fas fa-fw fa-tachometer-alt"></i>
	                    <span>Dashboard</span></a>
	            </li>

	            <!-- Divider -->
	            <hr class="sidebar-divider">

	            <!-- Heading -->
	           <!-- <div class="sidebar-heading">
	                Interface
	            </div>-->

	            <!-- Nav Item - Pages Collapse Menu -->
	          <!--  <li class="nav-item">
	                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
	                    aria-expanded="true" aria-controls="collapseTwo">
	                    <i class="fas fa-fw fa-cog"></i>
	                    <span>Components</span>
	                </a>
	                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
	                    <div class="bg-white py-2 collapse-inner rounded">
	                        <h6 class="collapse-header">Custom Components:</h6>
	                        <a class="collapse-item" href="buttons.html">Buttons</a>
	                        <a class="collapse-item" href="cards.html">Cards</a>
	                    </div>
	                </div>
	            </li>
	-->
	            <!-- Nav Item - Utilities Collapse Menu -->
	           <!-- <li class="nav-item">
	                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
	                    aria-expanded="true" aria-controls="collapseUtilities">
	                    <i class="fas fa-fw fa-wrench"></i>
	                    <span>Utilities</span>
	                </a>
	                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
	                    data-parent="#accordionSidebar">
	                    <div class="bg-white py-2 collapse-inner rounded">
	                        <h6 class="collapse-header">Custom Utilities:</h6>
	                        <a class="collapse-item" href="utilities-color.html">Colors</a>
	                        <a class="collapse-item" href="utilities-border.html">Borders</a>
	                        <a class="collapse-item" href="utilities-animation.html">Animations</a>
	                        <a class="collapse-item" href="utilities-other.html">Other</a>
	                    </div>
	                </div>
	            </li>-->

	            <!-- Divider -->
	            <!--<hr class="sidebar-divider">-->

	            <!-- Heading -->
	           <!-- <div class="sidebar-heading">
	                Addons
	            </div>-->

	            <!-- Nav Item - Pages Collapse Menu -->
	            <li class="nav-item">
	                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
	                    aria-expanded="true" aria-controls="collapsePages">
	                    <i class="fas fa-fw fa-folder"></i>
	                    <span>Pages</span>
	                </a>
	                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
	                    <div class="bg-white py-2 collapse-inner rounded">
	                        <h6 class="collapse-header">Login Screens:</h6>
	                        <a class="collapse-item" href="jspfile/login.jsp">Login</a>
	                        <a class="collapse-item" href="register.html">Register</a>
	                        <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
	                        <div class="collapse-divider"></div>
	                        <h6 class="collapse-header">Other Pages:</h6>
	                        <a class="collapse-item" href="404.html">404 Page</a>
	                        <a class="collapse-item" href="blank.html">Blank Page</a>
	                    </div>
	                </div>
	            </li>

	            <!-- Nav Item - Charts -->
	           <!-- <li class="nav-item">
	                <a class="nav-link" href="charts.html">
	                    <i class="fas fa-fw fa-chart-area"></i>
	                    <span>Charts</span></a>
	            </li>-->

	            <!-- Nav Item - Tables -->
	           <!-- <li class="nav-item">
	                <a class="nav-link" href="tables.html">
	                    <i class="fas fa-fw fa-table"></i>
	                    <span>Tables</span></a>
	            </li>-->

	            <!-- Divider -->
	            <hr class="sidebar-divider d-none d-md-block">

	            <!-- Sidebar Toggler (Sidebar) -->
	            <div class="text-center d-none d-md-inline">
	                <button class="rounded-circle border-0" id="sidebarToggle"></button>
	            </div>

	            <!-- Sidebar Message -->
	           <!-- <div class="sidebar-card d-none d-lg-flex">
	                <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
	                <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>
	                <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a>
	            </div>-->

	        </ul>
	        <!-- End of Sidebar -->

	        

                <!-- Begin Page Content -->
                <div class="container-fluid">
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

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../js/sb-admin-2.min.js"></script>

</body>

</html>