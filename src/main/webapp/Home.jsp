<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ page import="java.util.Date" %>


		<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<html>

		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>College Management System</title>
			<link href='homepage.css' rel='stylesheet' type='text/css'>

			<script src="slider/js-image-slider.js" type="text/javascript"></script>
			<link href="slider/js-image-slider.css" rel="stylesheet" type="text/css" />


			<link rel="stylesheet" type="text/css" href="engine1//style.css" media="screen" />
			<script type="text/javascript" src="engine1//jquery.js"></script>
		</head>

		<body>

			<div class='container'>

				<div class='wrapper'>
					<div class='header'>

						<div class='left'>
							<img src="pics/logo.png">
						</div>
						<div class='right'>
							<div class='top'>
								<h3>
									<%= new java.util.Date() %>
								</h3>

							</div>
							<!-- <div class='bottom'>
						<h4> Toll Free : 1-800-200-3575</h4>
					</div>
					 -->

						</div>
					</div>
				</div>

				<div class='menu'>
					<div class='wrapper'>
						<ul>
							<li><a class="active" href='Home.jsp'>Home</a></li>

							<li>
								<a href='#'>About Us</a>
								<ul>
									<li><a href='Legacy.jsp'>Legacy</a></li>
									<li><a href='Vision.jsp'>Vision</a></li>
								</ul>
							</li>

							<li>
								<a href='login.jsp'>Login</a>

							</li>

							<li><a href='course.jsp'>Courses</a></li>

							<li>
								<a href='#'>Facilities</a>
								<ul>


									<li><a href='login.jsp'>Hostel</a></li>
									<li><a href='updateslogin.jsp'>Notice Board</a></li>

								</ul>

							</li>

							<li><a href='enquiry_form.jsp'>Enquiry</a></li>
							<li><a href='ContactUs.jsp'>Contact Us</a></li>
							<li><a href='Logout.jsp'>Logout</a></li>


						</ul>
					</div>
				</div>





				<div class='wrapper'>
					<div id='slider'>
						<img src='slider/flash-img.jpg'><img src='slider/s2.jpg'><img src='slider/s3.jpg'><img
							src='slider/s4.jpg'>
					</div>
				</div>


				<div class='hfooter'>
					<jsp:include page="view_updates_visitors.jsp"></jsp:include>
				</div>
				<div class='footer'>
					<p>Copyright � College <a href='#'>College Management System</a> All Rights Reserved</p>
				</div>
			</div>


		</body>

		</html>