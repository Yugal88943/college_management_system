<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Students</title>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>

<div class ='employee-content1'>
	<div class='wrapper'>
			<a href="employeeHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				<h2><center><font color="crimson"><b>View Students By</b></font></center></h2><br/>
				
						
				<section class="vstudent-content">
					<aside class="left_secvs">
						<a href="emp_view_stu_course.jsp"><img src="pics/subject1.jpg"></a>
						<a href="emp_view_stu_course.jsp">Course</a>
					</aside>
					
					<aside class="right_secvs">
						<a href="emp_view_stu_batch.jsp"><img src="pics/year.jpg"></a>
						<a href="emp_view_stu_batch.jsp">Batch</a>
					</aside>
					
				</section>
		
	</div>
	<div class='hfooter'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>
</div>

</body>
</html>