<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<link href='homepage.css' rel='stylesheet' type='text/css'>

</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>

	<div class="wrapper">
	
		 <div id='admin-content'>
		
						<table align='center' class='table'>
						
						<tr><td colspan="3"><h2 align= 'center'> <font color='midnightblue'>WELCOME ADMIN </font></h2></td></tr>
					
				</table>
			
			</div>  
					
			<section class="admin-container">
				<aside class="left_sec1">
					<a href="new_employee.jsp"><img src="pics/image1.jpg"></a>
					<a href ="new_employee.jsp">Create Teacher</a>
				</aside>
				
				<aside class="left_sec2">
					<a href ="view_employee.jsp"><img src="pics/view.png"></a>
					<a href ="view_employee.jsp">View Teacher</a>
				</aside>
				
				<aside class="right_sec">
					<a href ="delete_employee.jsp"><img src="pics/image3.jpg"></a>
					<a href ="delete_employee.jsp">Delete Teacher</a>
				</aside>
			</section>
	</div>
	
	<div class='hfooter'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>

</body>
</html>