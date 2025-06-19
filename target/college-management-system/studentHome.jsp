<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Home</title>
</head>
<body>

<jsp:include page="head_menu.jsp"></jsp:include>
<div class ='employee-content1'>
	<div class='wrapper'>
	<jsp:include page="view_updates.jsp"></jsp:include>	
<% 
				String fname="";
				String lname="";
				
				if(session.getAttribute("firstname")!=null && session.getAttribute("lastname")!=null)
				{
					 fname = session.getAttribute("firstname").toString();
					 lname = session.getAttribute("lastname").toString();
					 
			}
				else{
					fname="";
					lname="";
				}
			
			%>
			<center>	<h2><font color="midnightblue"> WELCOME STUDENT &nbsp;&nbsp;&nbsp; </font></h2>
		<h2><font><%= fname +" "+lname %></font></h2>
			</center>
			
			<jsp:include page="studentMenu.jsp"></jsp:include>
			
			
			
			
			
</div>
</div>		
</body>
</html>