<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Fortress Quiz Manager</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicons -->
<link href="resources/img/favicon.png" rel="icon">
<!-- <link href="resources/img/apple-touch-icon.png" rel="apple-touch-icon"> -->

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700"
	rel="stylesheet">



<!-- Libraries CSS Files -->
<!-- <link href="resources/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet"> -->
<link href="webjars/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="resources/lib/ionicons/css/ionicons.min.css"
	rel="stylesheet">
<link href="resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="resources/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">

<!-- Main Stylesheet File -->
<link href="resources/css/style.css" rel="stylesheet">

<!-- Bootstrap CSS File -->
<link href="webjars/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet">

</head>

<body>

	<!--==========================
    Header
  ============================-->
	<header id="header">
		<div class="container-fluid">

			<div id="logo" class="pull-left">
				<h1>
					<a href="#" class="scrollto">QuizManager</a>
				</h1>
				<!-- Uncomment below if you prefer to use an image logo -->
				<!-- <a href="#intro"><img src="img/logo.png" alt="" title="" /></a>-->
			</div>

			<!-- <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="#intro">Home</a></li>
          <li class="menu-has-children"><a href="">Management</a>
            <ul>
              <li><a href="#">Questions</a></li>
              <li><a href="#">MCQ Choices</a></li>
              <li><a href="#">Students</a></li>
              <li><a href="#">Answers</a></li>
              <li><a href="#">Exams</a></li>
              <li><a href="#">MCQ Answers</a></li>
            </ul>
          </li>
          <li><a href="#team">Student</a></li>
          <li class="menu-has-children"><a href="">Profile</a>
            <ul>
              <li><a href="#">Settings</a></li>
              <li><a href="#">Change Password</a></li>
              <li><a href="#">Logout</a></li>
            </ul>
          </li>
          <li><a href="#contact">Contact</a></li>
        </ul>
      </nav> -->
			<!-- #nav-menu-container -->
		</div>
	</header>
	<!-- #header -->

	<!--==========================
    Intro Section
  ============================-->
	<section id="intro">
		<div class="intro-container">
			<div id="introCarousel" class="carousel  slide carousel-fade"
				data-ride="carousel">

				<ol class="carousel-indicators"></ol>

				<div class="carousel-inner" role="listbox">

					<div class="carousel-item active">
						<div class="carousel-background">
							<img src="resources/img/intro-carousel/1.png" alt="">
						</div>
						<div class="carousel-container">
							<div class="carousel-content">
								<h2>Manage Your Quizes</h2>
								<p>You are able to manage all the exams or quizes without
									any difficulty</p>
								<form action="index" method="POST">
									<input type="submit" value="Use the Application"
										class="btn-get-started scrollto" />
								</form>
							</div>
						</div>
					</div>

					<div class="carousel-item">
						<div class="carousel-background">
							<img src="resources/img/intro-carousel/2.png" alt="">
						</div>
						<div class="carousel-container">
							<div class="carousel-content">
								<h2>Student Management</h2>
								<p>You can also manage your students and allow them to take
									an exam when it is required and other functions.</p>
								<form action="index" method="POST">
									<button class="btn-get-started scrollto">Use the
										Application</button>
								</form>
							</div>
						</div>
					</div>

				</div>

				<a class="carousel-control-prev" href="#introCarousel" role="button"
					data-slide="prev"> <span
					class="carousel-control-prev-icon ion-chevron-left"
					aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#introCarousel"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon ion-chevron-right"
					aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>

			</div>
		</div>
	</section>
	<!-- #intro -->


	<!-- JavaScript Libraries -->
	<script src="resources/lib/jquery/jquery.min.js"></script>
	<script src="resources/lib/jquery/jquery-migrate.min.js"></script>
	<script src="resources/lib/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="resources/lib/easing/easing.min.js"></script>
	<script src="resources/lib/superfish/hoverIntent.js"></script>
	<script src="resources/lib/superfish/superfish.min.js"></script>
	<script src="resources/lib/wow/wow.min.js"></script>
	<script src="resources/lib/waypoints/waypoints.min.js"></script>
	<script src="resources/lib/counterup/counterup.min.js"></script>
	<script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="resources/lib/isotope/isotope.pkgd.min.js"></script>
	<script src="resources/lib/lightbox/js/lightbox.min.js"></script>
	<script src="resources/lib/touchSwipe/jquery.touchSwipe.min.js"></script>
	<!-- Contact Form JavaScript File -->
	<script src="resources/contactform/contactform.js"></script>

	<!-- JavaScript plugins -->
	<script src="resources/js/main.js" type="text/javascript"></script>
	<script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>