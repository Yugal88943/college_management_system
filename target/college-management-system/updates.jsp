<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Updates</title>
</head>
<body>

<jsp:include page="head_menu.jsp"></jsp:include>

<div class ='employee-content1'>
	<div class='wrapper'>
		
		<a href="employeeHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
		<center><h2><font color="midnightblue" >Welcome To Updates Maintenance</font></h2></center><br>
			<div class="wrapper">			
				<section class="employee-content1">
					<aside class="left_secvs">
						<a href = "write_updates.jsp"><img src="pics/news1.jpg"></a>
						<a href = "write_updates.jsp">Write News</a>
					</aside>
					
					<aside class="right_secvs">
						<a href = "delete_updates.jsp"><img src="pics/news_delete.png"></a>
						<a href = "delete_updates.jsp">Delete News</a>
					</aside>
					
				</section>
			</div>
		
	</div>
	<div class='hfooter'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>
</div>

</body>
</html>