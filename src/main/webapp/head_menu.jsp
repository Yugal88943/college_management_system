<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href='homepage.css' rel='stylesheet' type='text/css'>
</head>
<body>


<!-- Header Start Here -->

<div class='container'>

	<div class='wrapper1'>
		<div class='header'>
		
				<div class='left'>
					<img src='pics/logo.png'>
				</div>
				<div class='right'>
					<div class='top'>
						<h3><%= new java.util.Date() %></h3>
					
					</div>
					<!-- <div class='bottom'>
						<h4> Toll Free : 1-800-200-3575</h4>
					</div>
					 -->
				</div>
		</div>
	</div>	
</div>

<!-- Header End Here -->


<!-- Navigation Start Here -->
		
				<div class='menu'>
				<div class='wrapper1'>
					<ul>
						<li><a href='Home.jsp'>Home</a></li>
							
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

<!-- Navigation End Here -->

</body>
</html>