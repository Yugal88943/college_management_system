<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>B.Tech </title>
<link href='homepage.css' rel='stylesheet' type='text/css'>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>
			<div class="wrapper">	
			 <div id='course-content'>
		
					<a href="course.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				<table align="center" class='table'>
						<tr><td colspan="3"><h2 align= 'center'> <font color='midnightblue'>B.TECH </font></h2></td></tr>
					
				</table>
			
			</div>  
	
		
			<section class="course-container">
				<aside class="cleft_sec1">
					<img src="pics/cs1.jpg">
					<a href ="btech_cs.jsp">B.Tech(CS)</a>
				</aside>
				
				<aside class="cleft_sec2">
					<img src="pics/it1.jpg">
					<a href ="btech_it.jsp">B.Tech(IT)</a>					
				</aside>
							
				<aside class="cleft_sec3">
					<img src="pics/me1.jpg">
					<a href ="btech_me.jsp">B.Tech(ME)</a>					
				</aside>
															
				<aside class="cright_sec">
					<img src="pics/ec1.jpg">
					<a href="btech_ec.jsp">B.Tech(EC)</a>
				</aside>
			</section>
	</div>

<div class='hfooter'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>


</body>
</html>