<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring"%>


<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">
<title>Matrix Template - The Ultimate Multipurpose admin
	template</title>
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/home/assets/libs/select2/dist/css/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/home/assets/libs/jquery-minicolors/jquery.minicolors.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/home/assets/libs/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/home/assets/libs/quill/dist/quill.snow.css">
<link href="${pageContext.request.contextPath}/resources/home/dist/css/style.min.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
	<!-- ============================================================== -->
	<!-- Preloader - style you can find in spinners.css -->
	<!-- ============================================================== -->
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- Main wrapper - style you can find in pages.scss -->
	<!-- ============================================================== -->
	<div id="main-wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<header class="topbar" data-navbarbg="skin5">
			<nav class="navbar top-navbar navbar-expand-md navbar-dark">
				<div class="navbar-header" data-logobg="skin5">
					<!-- This is for the sidebar toggle which is visible on mobile only -->
					<a class="nav-toggler waves-effect waves-light d-block d-md-none"
						href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
					<!-- ============================================================== -->
					<!-- Logo -->
					<!-- ============================================================== -->
					<a class="navbar-brand" href="index.html"> <!-- Logo icon --> <b
						class="logo-icon p-l-10"> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
							<!-- Dark Logo icon --> <img
							src="${pageContext.request.contextPath}/resources/home/assets/images/logo-icon.png" alt="homepage"
							class="light-logo" />

					</b> <!--End Logo icon --> <!-- Logo text --> <span class="logo-text">
							<!-- dark Logo text --> <img
							src="${pageContext.request.contextPath}/resources/home/assets/images/logo-text.png" alt="homepage"
							class="light-logo" />

					</span> <!-- Logo icon --> <!-- <b class="logo-icon"> --> <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
						<!-- Dark Logo icon --> <!-- <img src="assets/images/logo-text.png" alt="homepage" class="light-logo" /> -->

						<!-- </b> --> <!--End Logo icon -->
					</a>
					<!-- ============================================================== -->
					<!-- End Logo -->
					<!-- ============================================================== -->
					<!-- ============================================================== -->
					<!-- Toggle which is visible on mobile only -->
					<!-- ============================================================== -->
					<a class="topbartoggler d-block d-md-none waves-effect waves-light"
						href="javascript:void(0)" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation"><i class="ti-more"></i></a>
				</div>
				<!-- ============================================================== -->
				<!-- End Logo -->
				<!-- ============================================================== -->
				<div class="navbar-collapse collapse" id="navbarSupportedContent"
					data-navbarbg="skin5">
					<!-- ============================================================== -->
					<!-- toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-left mr-auto">
						<li class="nav-item d-none d-md-block"><a
							class="nav-link sidebartoggler waves-effect waves-light"
							href="javascript:void(0)" data-sidebartype="mini-sidebar"><i
								class="mdi mdi-menu font-24"></i></a></li>
						<!-- ============================================================== -->

					</ul>
					<!-- ============================================================== -->
					<!-- Right side toggle and nav items -->
					<!-- ============================================================== -->
					<ul class="navbar-nav float-right">
						<!-- ============================================================== -->
						<!-- Comment -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle waves-effect waves-dark" href=""
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="mdi mdi-bell font-24"></i>
						</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">Action</a> <a
									class="dropdown-item" href="#">Another action</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div></li>
						<!-- ============================================================== -->
						<!-- End Comment -->
						<!-- ============================================================== -->
						<!-- ============================================================== -->
						<!-- Messages -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle waves-effect waves-dark" href=""
							id="2" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i
								class="font-24 mdi mdi-comment-processing"></i>
						</a>
							<div
								class="dropdown-menu dropdown-menu-right mailbox animated bounceInDown"
								aria-labelledby="2">
								<ul class="list-style-none">
									<li>
										<div class="">
											<!-- Message -->
											<a href="javascript:void(0)" class="link border-top">
												<div class="d-flex no-block align-items-center p-10">
													<span class="btn btn-success btn-circle"><i
														class="ti-calendar"></i></span>
													<div class="m-l-10">
														<h5 class="m-b-0">Event today</h5>
														<span class="mail-desc">Just a reminder that event</span>
													</div>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="link border-top">
												<div class="d-flex no-block align-items-center p-10">
													<span class="btn btn-info btn-circle"><i
														class="ti-settings"></i></span>
													<div class="m-l-10">
														<h5 class="m-b-0">Settings</h5>
														<span class="mail-desc">You can customize this
															template</span>
													</div>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="link border-top">
												<div class="d-flex no-block align-items-center p-10">
													<span class="btn btn-primary btn-circle"><i
														class="ti-user"></i></span>
													<div class="m-l-10">
														<h5 class="m-b-0">Pavan kumar</h5>
														<span class="mail-desc">Just see the my admin!</span>
													</div>
												</div>
											</a>
											<!-- Message -->
											<a href="javascript:void(0)" class="link border-top">
												<div class="d-flex no-block align-items-center p-10">
													<span class="btn btn-danger btn-circle"><i
														class="fa fa-link"></i></span>
													<div class="m-l-10">
														<h5 class="m-b-0">Luanch Admin</h5>
														<span class="mail-desc">Just see the my new admin!</span>
													</div>
												</div>
											</a>
										</div>
									</li>
								</ul>
							</div></li>
						<!-- ============================================================== -->
						<!-- End Messages -->
						<!-- ============================================================== -->

						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle text-muted waves-effect waves-dark pro-pic"
							href="" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"><img src="${pageContext.request.contextPath}/resources/home/assets/images/users/1.jpg"
								alt="user" class="rounded-circle" width="31"></a>
							<div class="dropdown-menu dropdown-menu-right user-dd animated">
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-user m-r-5 m-l-5"></i> My Profile</a> <a
									class="dropdown-item" href="javascript:void(0)"><i
									class="ti-wallet m-r-5 m-l-5"></i> My Balance</a> <a
									class="dropdown-item" href="javascript:void(0)"><i
									class="ti-email m-r-5 m-l-5"></i> Inbox</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="javascript:void(0)"><i
									class="ti-settings m-r-5 m-l-5"></i> Account Setting</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item"
									href="${pageContext.request.contextPath}/logout"><i
									class="fa fa-power-off m-r-5 m-l-5"></i> Logout</a>
								<div class="dropdown-divider"></div>
								<div class="p-l-30 p-10">
									<a href="javascript:void(0)"
										class="btn btn-sm btn-success btn-rounded">View Profile</a>
								</div>
							</div></li>
						<!-- ============================================================== -->
						<!-- User profile and search -->
						<!-- ============================================================== -->
					</ul>
				</div>
			</nav>
		</header>
		<!-- ============================================================== -->
		<!-- End Topbar header -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<aside class="left-sidebar" data-sidebarbg="skin5">
			<!-- Sidebar scroll-->
			<div class="scroll-sidebar">
				<!-- Sidebar navigation-->
				<nav class="sidebar-nav">
					<ul id="sidebarnav" class="p-t-30">
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="${pageContext.request.contextPath}/home"
							aria-expanded="false"><i class="mdi mdi-view-dashboard"></i><span
								class="hide-menu">Dashboard</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="employee"  aria-expanded="false"><i
								class="mdi mdi-account-plus"></i><span class="hide-menu">Add
									Employee</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="employeelist"  aria-expanded="false"><i
								class="mdi mdi-account-multiple"></i><span class="hide-menu">List
									Employees</span></a></li>
						<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="${pageContext.request.contextPath}/gallery"  aria-expanded="false"><i
								class="mdi mdi-google-photos"></i><span class="hide-menu">Gallery</span></a></li>
								<li class="sidebar-item"><a
							class="sidebar-link waves-effect waves-dark sidebar-link"
							href="${pageContext.request.contextPath}/email"  aria-expanded="false"><i
								class="mdi mdi-email-variant"></i><span class="hide-menu">Mail</span></a></li>
						
							</ul>
				</nav>
				<!-- End Sidebar navigation -->
			</div>
			<!-- End Sidebar scroll-->
		</aside>
		<!-- ============================================================== -->
		<!-- End Left Sidebar - style you can find in sidebar.scss  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Page wrapper  -->
		<!-- ============================================================== -->
		<div class="page-wrapper">
			<!-- ============================================================== -->
			<!-- Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<div class="page-breadcrumb">
				<div class="row">
					<div class="col-12 d-flex no-block align-items-center">
						<h4 class="page-title">Employee</h4>
						<div class="ml-auto text-right">
							<nav aria-label="breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Library</li>
								</ol>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- End Bread crumb and right sidebar toggle -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Container fluid  -->
			<!-- ============================================================== -->
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<spring:form class="form-horizontal form-group"
								action="${pageContext.request.contextPath}/update" method="post"
								modelAttribute="emodel">
								<div class="card-body">
									<h4 class="card-title" align="center">Add Employee</h4>
									<table class="table table-borderless">
										<tr>
											<td class="text-right control-label col-form-label">First
												Name</td>
											<td><spring:input path="fname"
													class="form-control col-xs-4" style="width: 50%;" /></td>

										</tr>


										<tr>
											<td class="text-right control-label col-form-label">Last
												Name</td>
											<td><spring:input path="lname"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">Gender</td>
											<td><spring:radiobutton path="gender" value="male"
													class="col-xs-4" /> Male <spring:radiobutton path="gender"
													value="female" class="col-xs-4" /> Female <spring:radiobutton
													path="gender" value="others" class="col-xs-4" /> Others</td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">DoB</td>
											<td><spring:input path="dob" type="date"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">Phone</td>
											<td><spring:input path="phone"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">Company</td>
											<td><spring:input path="company"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">Designation</td>
											<td><spring:input path="designation"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">Job</td>
											<td><spring:input path="job"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">Salary</td>
											<td><spring:input path="salary"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">Country</td>
											<td><spring:input path="address.country"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">City</td>
											<td><spring:input path="address.city"
													class="form-control col-xs-4" style="width: 50%;" /></td>
										</tr>

										<tr>
											<td class="text-right control-label col-form-label">State</td>
											<td><spring:select path="address.state"
													style="width: 50%; height: 36px;"
													class="form-control col-xs-4">

													<spring:option value="">----select----</spring:option>
													<spring:option value="1">State-1</spring:option>
													<spring:option value="2">State-2</spring:option>
													<spring:option value="3">State-3</spring:option>
													<spring:option value="4">State-4</spring:option>
													<spring:option value="5">State-5</spring:option>
													<spring:option value="6">State-6</spring:option>
													<spring:option value="7">State-7</spring:option>

												</spring:select></td>
										</tr>

										<tr>
											<td colspan="2" style="text-align: center;"><input
												class="btn btn-primary btn-lg" type="submit" value="Update"
												style="width: 10%;" /></td>
										</tr>
									</table>
								</div>
								<spring:hidden path="id" />
								<spring:hidden path="address.id" />
							</spring:form>

						</div>

					</div>
				</div>
			</div>
			<!-- editor -->

			<!-- ============================================================== -->
			<!-- End PAge Content -->
			<!-- ============================================================== -->
			<!-- ============================================================== -->
			<!-- Right sidebar -->
			<!-- ============================================================== -->
			<!-- .right-sidebar -->
			<!-- ============================================================== -->
			<!-- End Right sidebar -->
			<!-- ============================================================== -->
		</div>
		<!-- ============================================================== -->
		<!-- End Container fluid  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- footer -->
		<!-- ============================================================== -->
		<footer class="footer text-center">
			All Rights Reserved by Matrix-admin. Designed and Developed by <a
				href="https://wrappixel.com">WrapPixel</a>.
		</footer>
		<!-- ============================================================== -->
		<!-- End footer -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Page wrapper  -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="${pageContext.request.contextPath}/resources/home/assets/libs/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/popper.js/dist/umd/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
	<script src="resources/home/assets/extra-libs/sparkline/sparkline.js"></script>
	<!--Wave Effects -->
	<script src="${pageContext.request.contextPath}/resources/home/dist/js/waves.js"></script>
	<!--Menu sidebar -->
	<script src="${pageContext.request.contextPath}/resources/home/dist/js/sidebarmenu.js"></script>
	<!--Custom JavaScript -->
	<script src="${pageContext.request.contextPath}/resources/home/dist/js/custom.min.js"></script>
	<!-- This Page JS -->
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
	<script src="resources/home/dist/js/pages/mask/mask.init.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/select2/dist/js/select2.full.min.js"></script>
	<script src="resources/home/assets/libs/select2/dist/js/select2.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/jquery-asColor/dist/jquery-asColor.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/jquery-asGradient/dist/jquery-asGradient.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/jquery-asColorPicker/dist/jquery-asColorPicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/jquery-minicolors/jquery.minicolors.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/home/assets/libs/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/home/assets/libs/quill/dist/quill.min.js"></script>
	<script>
		//***********************************//
		// For select 2
		//***********************************//
		$(".select2").select2();

		/*colorpicker*/
		$('.demo').each(function() {
			//
			// Dear reader, it's actually very easy to initialize MiniColors. For example:
			//
			//  $(selector).minicolors();
			//
			// The way I've done it below is just for the demo, so don't get confused
			// by it. Also, data- attributes aren't supported at this time...they're
			// only used for this demo.
			//
			$(this).minicolors({
				control : $(this).attr('data-control') || 'hue',
				position : $(this).attr('data-position') || 'bottom left',

				change : function(value, opacity) {
					if (!value)
						return;
					if (opacity)
						value += ', ' + opacity;
					if (typeof console === 'object') {
						console.log(value);
					}
				},
				theme : 'bootstrap'
			});

		});
		/*datwpicker*/
		jQuery('.mydatepicker').datepicker();
		jQuery('#datepicker-autoclose').datepicker({
			autoclose : true,
			todayHighlight : true
		});
		var quill = new Quill('#editor', {
			theme : 'snow'
		});
	</script>
</body>

</html>