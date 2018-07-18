<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html style="height: auto;">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Fortress QuizManager | Student Management</title>
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="resources/lib/admin-lte/dist/css/adminlte.min.css">
<!-- Google Font: Source Sans Pro -->
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
	rel="stylesheet">
</head>
<body class="sidebar-mini" style="height: auto;">
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand bg-white navbar-light border-bottom">
			<!-- Left navbar links -->
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" data-widget="pushmenu"
					href="#"><i class="fa fa-bars"></i></a></li>
				<li class="nav-item d-none d-sm-inline-block"><a
					href="dashboard" class="nav-link">Dashboard</a></li>
				<li class="nav-item d-none d-sm-inline-block"><a href="#"
					class="nav-link">Contact</a></li>
			</ul>

			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Messages Dropdown Menu -->
				<li class="nav-item dropdown"><a class="nav-link"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell-o"></i> <span
						class="badge badge-danger navbar-badge"></span>
				</a>
					<div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
						<a href="#" class="dropdown-item"> <!-- Message Start -->
							<div class="media">
								<img src="resources/lib/admin-lte/dist/img/avatar0.png"
									alt="User Avatar" class="img-size-50 mr-3 img-circle">
								<div class="media-body">
									<h3 class="dropdown-item-title">
										${userName} <span class="float-right text-sm text-danger"><i
											class="fa fa-star"></i></span>
									</h3>
								</div>
							</div> <!-- Message End -->
						</a>
					</div>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4"
			style="min-height: 586px;">
			<!-- Brand Logo -->
			<a href="dashboard" class="brand-link"> <img
				src="resources/img/epitalogo128x128.png" alt="Logo"
				class="brand-image img-circle elevation-3" style="opacity: .8">
				<span class="brand-text font-weight-light">Fortress
					QuizManager</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img src="resources/lib/admin-lte/dist/img/avatar.png"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">${userFullName}</a>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- <li class="nav-item"><a href="create-user" class="nav-link">
								<i class="nav-icon fa fa-th"></i>
								<p>
									Users <span class="right badge badge-danger">Add New</span>
								</p>
						</a></li> -->

						<li class="nav-item"><a href="students" class="nav-link">
								<i class="nav-icon fa fa-th"></i>
								<p>
									Students <span class="right badge badge-success">Show
										All</span>
								</p>
						</a></li>

					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 586px;">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Student Management</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="users">Students</a></li>
								<li class="breadcrumb-item active">Create Student</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<div class="row">

						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Create Student</h3>

									<div class="card-tools">
										<div class="input-group input-group-sm" style="width: 200px;">
											<input type="text" name="table_search"
												class="form-control float-right" placeholder="Search">

											<div class="input-group-append">
												<button type="submit" class="btn btn-default">
													<i class="fa fa-search"></i>
												</button>
											</div>
										</div>
									</div>
								</div>

								<!-- form start -->
								<form role="form" action="create-student" method="POST">
									<div class="card-body">
										<div class="form-group">
											<label for="studentEmail">Email Address</label> <input
												type="email" class="form-control" id="studentEmail"
												placeholder="Enter email" name="studentEmail">
										</div>
										<div class="form-group">
											<label for="firstName">First Name</label> <input type="text"
												class="form-control" id="firstName"
												placeholder="Enter first name" name="firstName">
										</div>
										<div class="form-group">
											<label for="lastName">First Name</label> <input type="text"
												class="form-control" id="lastName"
												placeholder="Enter last name" name="lastName">
										</div>

										<div class="form-group">
											<label for="studentPassword">Password</label> <input
												type="password" class="form-control" id="studentPassword"
												placeholder="Password" name="studentPassword">
										</div>
									</div>
									<!-- /.card-body -->

									<div class="card-footer">
										<button type="submit" class="btn btn-success">Create
											Student</button>
										<a href="students" class="btn btn-default">Cancel</a>
									</div>
								</form>

							</div>
							<!-- /.card -->
						</div>
					</div>

				</div>
		</div>
		</section>
		<!-- /.content -->
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<div class="float-right d-none d-sm-block">
			<b>Version</b> 1.0.0
		</div>
		<strong>Copyright © 2018 <a href="http://adminlte.io">Fortress
				QuizManager</a>.
		</strong> All rights reserved.
	</footer>

	<!-- Control Sidebar -->
	<!--   <aside class="control-sidebar control-sidebar-dark"> -->
	<!-- Control sidebar content goes here -->
	<!--   <div class="p-3"><h5>Customize AdminLTE</h5><hr class="mb-2"><h6>Navbar Variants</h6><div class="d-flex"><div class="d-flex flex-wrap mb-3"><div class="bg-primary elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-info elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-success elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-danger elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-warning elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-white elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-gray-light elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div></div></div><div class="mb-4"><input type="checkbox" value="1" checked="checked" class="mr-1"><span>Navbar border</span></div><h6>Dark Sidebar Variants</h6><div class="d-flex"></div><div class="d-flex flex-wrap mb-3"><div class="bg-primary elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-warning elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-info elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-danger elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-success elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div></div><h6>Light Sidebar Variants</h6><div class="d-flex"></div><div class="d-flex flex-wrap mb-3"><div class="bg-primary elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-warning elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-info elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-danger elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-success elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div></div><h6>Brand Logo Variants</h6><div class="d-flex"></div><div class="d-flex flex-wrap mb-3"><div class="bg-primary elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-info elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-success elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-danger elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-warning elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-white elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><div class="bg-gray-light elevation-2" style="width: 40px; height: 20px; border-radius: 25px; margin-right: 10px; margin-bottom: 10px; opacity: 0.8; cursor: pointer;"></div><a href="javascript:void(0)">clear</a></div></div></aside> -->
	<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="resources/lib/admin-lte/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="resources/lib/admin-lte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Slimscroll -->
	<script
		src="resources/lib/admin-lte/plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="resources/lib/admin-lte/plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="resources/lib/admin-lte/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="resources/lib/admin-lte/dist/js/demo.js"></script>


</body>
</html>