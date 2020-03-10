<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<script src="https://www.google.com/recaptcha/api.js" async defer></script>


<!-- Font Awesome CDN-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>

<body>
	<div class="container mt-2 mb-4">
		<div class="row justify-content-md-center">
			<div class="col-sm-4 border border-primary shadow rounded pt-2">
				<div class="text-center">
					<i class="fa fa-users fa-5x" aria-hidden="true"></i>
				</div>
				<div class="col-sm-12">
					<form action="userSignup" method="post"
						onSubmit="return validation();">
						<div class="form-group">
						<p class="txt1 text-center text-danger"> ${error} </p>
							<label class="font-weight-bold">Email</label>
							<div class="input-group">
								<input type="email" name="email" id="email" class="form-control"
									placeholder="Enter valid email" required>
								<div class="input-group-append">
									<button type="button" class="btn btn-primary"
										onClick="return emailCheck();">
										<i class="fa fa-envelope"></i>
									</button>
								</div>
							</div>
						</div>
						<div id="next-form" class="collapse">
							<div class="form-group">
								<label class="font-weight-bold">User Name <small
									class="text-danger"><em>This will be your login
											name!</em></small></label> <input type="text" name="username" id="username"
									class="form-control" placeholder="Choose your user name"
									required>
							</div>
							<div class="form-group">
								<label class="font-weight-bold">First Name</label> <input
									type="text" name="fname" id="fname" class="form-control"
									placeholder="John " required>
							</div>
							<div class="form-group">
								<label class="font-weight-bold">Last Name</label> <input
									type="text" name="lname" id="lname" class="form-control"
									placeholder="Doe" required>
							</div>
							<div class="form-group">
								<label class="font-weight-bold">Password</label> <input
									type="password" name="password" id="password"
									class="form-control" placeholder="***********" required>
							</div>
							<div class="form-group">
								<label class="font-weight-bold">Confirm Password</label> <input
									type="password" name="cpassword" id="cpassword"
									class="form-control" placeholder="***********" required>
								<em id="cp"></em>
							</div>
							<div class="form-group">
								<label><input type="checkbox" name="condition"
									id="condition" required> I agree with the <a
									href="javascript:;">Terms &amp; Conditions</a> for
									Registration.</label>
							</div>
							<div class="form-group">
								<div class="g-recaptcha flex-c-m mb-4" data-sitekey="6Le1ypcUAAAAAD4DO7IoI6ZngSGZAOZCg4IfwWZ-"></div>
							</div>
							<div class="form-group">
								<input type="submit" name="submit" value="signup"
									class="btn btn-block btn-danger">
							</div>

							
						</div>
						<!--/.next-form-->
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

<script>
	function emailCheck() {
		if ($("#email").val() == "") {
			$("#email").addClass('is-invalid');
			return false;
		} else {
			var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;
			if (regMail.test($("#email").val()) == false) {
				$("#email").addClass('is-invalid');
				return false;
			} else {
				$("#email").removeClass('is-invalid');
				$('#next-form').collapse('show');
			}

		}
	}

	function validation() {
		if ($("#username, #fname,#lname, #password, #cpassword").val() == "") {
			$("#username, #fname,#lname, #password, #cpassword").addClass(
					'is-invalid');
			return false;
		} else {
			$("#username, #fname,#lname, #password, #cpassword").removeClass(
					'is-invalid');
		}

		if ($("#password").val() != $("#cpassword").val()) {
			$("#cpassword").addClass('is-invalid');
			$("#cp")
					.html(
							'<span class="text-danger">Password and confirm password not matched!</span>');
			return false;
		}
	}
	$(document).ready(function(e) {
		$("#username").on("keyup", function() {
			if ($("#username").val() == "") {
				$("#username").addClass('is-invalid');
				return false;
			} else {
				$("#username").removeClass('is-invalid');
			}
		});
		$("#fname").on("keyup", function() {
			if ($("#fname").val() == "") {
				$("#fname").addClass('is-invalid');
				return false;
			} else {
				$("#fname").removeClass('is-invalid');
			}
		});
		$("#lname").on("keyup", function() {
			if ($("#lname").val() == "") {
				$("#lname").addClass('is-invalid');
				return false;
			} else {
				$("#lname").removeClass('is-invalid');
			}
		});
		$("#password").on("keyup", function() {
			if ($("#password").val() == "") {
				$("#password").addClass('is-invalid');
				return false;
			} else {
				$("#password").removeClass('is-invalid');
			}
		});
		$("#cpassword").on("keyup", function() {
			if ($("#cpassword").val() == "") {
				$("#cpassword").addClass('is-invalid');
				return false;
			} else {
				$("#cpassword").removeClass('is-invalid');
			}
		});
	});
</script>

</html>