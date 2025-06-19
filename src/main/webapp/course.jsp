<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Courses Offered</title>
<link href='homepage.css' rel='stylesheet' type='text/css'>

</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>
	
<div class ='employee-content1'>
	<div class='wrapper1'>
		 <div id='course-content'>
		
				<table align="center" class='table'>
						<tr><td colspan="3"><h2 align= 'center'> <font color='midnightblue'>COURSES OFFERED </font></h2></td></tr>
					
				</table>
			
		</div>  
		
			<section class="course-container">
				<aside class="cleft_sec1">
					<img src="pics/comp1.jpg">
					<a href ="bca.jsp">BCA</a>
					<a href ="mca.jsp">MCA</a>
				</aside>
				
				<aside class="cleft_sec2">
					<img src="pics/mng1.jpg">
					<a href ="bba.jsp">BBA</a>					
					<a href ="mba.jsp">MBA</a>
				</aside>
							
				<aside class="cleft_sec3">
					<img src="pics/pharmacy1.jpg">
					<a href ="bpharmacy.jsp">B.Pharmacy</a>					
					<a href ="mpharmacy.jsp">M.Pharmacy</a>
				</aside>
															
				<aside class="cright_sec">
					<img src="pics/eng1.jpg">
					<a href="btech.jsp">B.Tech</a>
					<a href="mtech.jsp">M.Tech</a>
					
				</aside>
			</section>
	</div>
</div>

<div class='hfooter'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>
</body>
</html>