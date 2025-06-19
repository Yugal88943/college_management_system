<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Home</title>
<link href='homepage.css' rel='stylesheet' type='text/css'>

</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>

					<% 
						String fname="";
						String lname="";
						if(session.getAttribute("firstname")!=null && session.getAttribute("lastname")!=null)
						{
							 fname = session.getAttribute("firstname").toString();
							 lname = session.getAttribute("lastname").toString();
						}
						else
						{
							fname="";
							lname="";
						}
			
					%>	
					
		<div class='wrapper'>				
			<div class='employee-content'>
						
					<table align="center" class='table'>
						<tr><td colspan="6"><h2 align= 'center'> <font color='midnightblue'>WELCOME EMPLOYEE </font></h2> </td></tr>
						<tr><td colspan="6"><h2 align= 'center'> <font color='crimson'><%= fname +" "+lname %> </font></h2> </td></tr>
					</table>
					
					
			</div>
	
		</div>
		<div class="wrapper">			
				<section class="employee-content1">
					<aside class="left_sece1">
						<a href ="student_admission.jsp"><img src="pics/Admission.jpg"></a>
						<a href ="student_admission.jsp">Create Student</a>
					</aside>
					
					<aside class="left_sece2">
						<a href ="view_student.jsp"><img src="pics/studetail1.jpg"></a>
						<a href ="view_student.jsp">View Student</a>
					</aside>
					
					<aside class="left_sece3">
						<a href ="emp_listStu.jsp"><img src="pics/image3.jpg"></a>
						<a href ="emp_listStu.jsp">Delete Student</a>
					</aside>
					
					<aside class="left_sece4">
						<a href ="emp_update_details.jsp"><img src="pics/manageuser.jpg"></a>
						<a href ="emp_update_details.jsp">Update Details</a>
					</aside>
					
					<aside class="right_sece">
						<a href ="change_password.jsp"><img src="pics/chngpwd1.jpg"></a>
						<a href ="change_password.jsp">Change Password</a>
					</aside>
				</section>
		</div>
		
		<div class="wrapper">			
				<section class="employee-content1">
					<aside class="left_sece11">
						<a href ="subjects.jsp"><img src="pics/subject1.jpg"></a>
						<a href ="subjects.jsp">Subjects Maintenance</a>
					</aside>
					
					<aside class="left_sece22">
						<a href ="book.jsp"><img src="pics/books.jpg"></a>
						<a href ="book.jsp">Books Maintenance</a>
					</aside>
					
					<aside class="left_sece33">
						<a href ="questions.jsp"><img src="pics/exam.jpg"></a>
						<a href ="questions.jsp">Exam Maintenance</a>
					</aside>
									
					<aside class="right_sece2">
						<a href ="updates.jsp"><img src="pics/News.jpg"></a>
						<a href ="updates.jsp">News Maintenance</a>
					</aside>
				</section>
		</div>
						
<div class='hfooter'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>

</body>
</html>