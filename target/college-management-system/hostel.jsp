<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hostel Form</title>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>

	<%
		String w_name=(String)session.getAttribute("username");
		System.out.print("Hostel wName"+w_name);
	
	
	%>
	
	<div class="wrapper1">
		 <div id='admin-content'>
		
				<!-- <a href='login.jsp'><img src='C:\Users\Divya\Desktop\pics\Back-icon.png' width='50px' height='30px' alt='no image find'></a>  -->
						
				<table align='center' class='table'>
						
					<tr><td colspan="3"><h2 align= 'center'> <font color='midnightblue'>HOSTEL FORM</font></h2></td></tr>
					
				</table>
			
		</div>
		
		<img src="pics/hostel2.jpg">  
					
			<section class="admin-container">
				<aside class="left_sec1">
					<a href="new_stuhosdetail.jsp"><img src="pics/hostel1.png"></a>
					<%session.setAttribute("warden_name",w_name); %>
					<a href ="new_stuhosdetail.jsp">Create Student</a>
				</aside>
				
				<aside class="left_sec2">
					<a href="view_stuhosdetail.jsp"><img src="pics/hostel5.png"></a>
					<a href ="view_stuhosdetail.jsp">View Student</a>
				</aside>
				
				<aside class="right_sec">
					<a href="delete_stuhosdetail.jsp"><img src="pics/hostel3.png"></a>
					<a href ="delete_stuhosdetail.jsp">Delete Student</a>
				</aside>
			</section>
	</div>


<div class='hfooter'>
	<jsp:include page="view_updates_visitors.jsp"></jsp:include>
</div>
</body>
</html>