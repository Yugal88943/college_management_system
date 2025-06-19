<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>M.Tech</title>
<link href='homepage.css' rel='stylesheet' type='text/css'>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>	
	<div class="wrapper">
	
		 <div id='course-content'>
						<a href="course.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
						<table align="center" class='table'>
						<tr><td colspan="3"><h2 align= 'center'> <font color='midnightblue'>M.TECH </font></h2></td></tr>
					
				</table>
			
		</div>  
						
			<section class="course-container">
				<aside class="cleft_sec1">
					<img src="pics/cs1.jpg">
					<a href ="mtech_cs.jsp">M.Tech(CS)</a>
				</aside>
				
				<aside class="cleft_sec2">
					<img src="pics/it1.jpg">
					<a href ="mtech_it.jsp">M.Tech(IT)</a>					
				</aside>
							
				<aside class="cleft_sec3">
					<img src="pics/me1.jpg">
					<a href ="mtech_me.jsp">M.Tech(ME)</a>					
				</aside>
															
				<aside class="cright_sec">
					<img src="pics/ec1.jpg">
					<a href="mtech_ec.jsp">M.Tech(EC)</a>
				</aside>
			</section>
	</div>

<div class='hfooter'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>	
</body>
</html>