<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

<title>QuizManager - Login</title>

<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!--===============================================================================================-->	
	<link href="resources/img/favicon.png" rel="icon">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/css/util.css">
	<link rel="stylesheet" type="text/css" href="resources/lib/login-page/css/main.css">
<!--===============================================================================================-->

</head>

<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('resources/img/intro-carousel/1.png');">
			<div class="wrap-login100">
				
				<form class="login100-form validate-form" action="login" method="POST">
					<span class="login100-form-logo">
						<i ><img alt="" src="resources/img/epita-logo.png" class="img-fluid"></i>
					</span>

					<span class="login100-form-title p-b-34 p-t-27">
						Account Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" name="userIsStudent">
						<label class="label-checkbox100" for="ckb1">
							I am a Student
						</label>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-90">
						<a class="txt1" href="#">
							Forgot Password?
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="resources/lib/login-page/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/lib/login-page/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/lib/login-page/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/lib/login-page/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/lib/login-page/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/lib/login-page/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/lib/login-page/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="resources/lib/login-page/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="resources/lib/login-page/js/main.js"></script>
	
	
	<!-- JavaScript plugins -->
<!-- 	<script src="resources/js/main.js" type="text/javascript"></script> -->
<!-- 	<script src="webjars/jquery/3.3.1-1/jquery.min.js"></script> -->
<!-- 	<script src="webjars/bootstrap/4.1.1/js/bootstrap.min.js"></script> -->
</body>
</html>