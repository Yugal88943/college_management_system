<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Employee</title>
<link href='homepage.css' rel='stylesheet' type='text/css'>

<script type="text/javascript">

function valid()
{

	var fname=document.myform.firstname.value;
	var lname=document.myform.lastname.value;
	var uname=document.myform.username.value;
	var mailid1=document.myform.mailid.value;	
	
	var contact=document.myform.contact.value;
	var c=/^[0-9]+$/;
	
	if(fname==""|| lname==""|| uname==""|| mailid1==""||contact=="")
	{
		alert("Please Fill All The Fields");	
		return false;
	}
	
	if(contact.length>10)
		{
		
			alert("Contact Number out of range");
			return false;
		
		}
	if(!contact.match(c))
	{
		alert("Contact Number Should be in digits");	
		return false;
	}
	
}

</script>
</head>

<body>
<jsp:include page="head_menu.jsp"></jsp:include>
	
		<div class ='employee-content1'>
			<div class='wrapper1'>
				<%		String msg = "";
				if(request.getAttribute("msg")!=null)
				{
					 msg = request.getAttribute("msg").toString();
				}
				else
				{
					msg = "";	
				}
				%>
				
				
				<%		
				 
				
				 String username = "";
						String password="";
						if(request.getAttribute("username")!=null)
						{
							username=request.getAttribute("username").toString();
							 password = request.getAttribute("password").toString();
						}
						else{
								username="";
								password="";
						}
					                                                 
				%>
				
				<!-- <form action="Create_NewEmployee" method="post" name="myform" onsubmit="valid()">  -->
			 <form action="Create_NewEmployee" method="post" name="myform" onsubmit="return valid()">
			 			
			<section class="admin-container">
				<aside class="left_sec11">
					<img src="pics/image1.jpg">
				</aside>
				
				<aside class="left_sec22">
				
				<table align = "center" class='table'>
							<tr><th colspan="2"><h2><font color="midnightblue"><b>Create New Teacher</b></font></h2></th>
							<tr>
									<td colspan=2 align="center"><font color="red"><b><%=username %></b></font></td>
							</tr>
							<tr>
									<td colspan=2 align="center"><font color="red"><b><%=password %></b></font></td>
							</tr>
						
				</table>
				
				<table align="center" class='table'>			
							
						<tr><td class='label'><b>First Name </b> </td>
								<td> <input class='input' type = "text" name="firstname"></td></tr>
						<tr><td><b>Last Name </b> </td>
								<td> <input class='input' type = "text" name="lastname" value=""></td></tr>
						<tr><td><b>User Name  </b></td>
								<td> <input class='input' type = "text" name="username" value=""></td></tr>
						<tr><td><b>E_mail ID </b> </td>
								<td> <input class='input' type = "text" name="mailid" value=""></td></tr>
						<tr><td class='label'><b>Contact No. </b> </td>
								<td> <input class='input' type = "text" name="contact" value=""></td></tr>
								
						<tr><td align ="center" colspan="2"><input class='submit' type="submit" value="Submit"><input class='submit' type="reset" value="Reset">
						<a href="AdminHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
						</td>
						</tr>
				</table>
				
				
				<%      out.print(msg);  %>
				</aside>
				
				<aside class="right_sec1">
					<jsp:include page="view_updates.jsp"></jsp:include>
				</aside>
				
				
				</form>
		
		</div>
	</div>
	
	<div class='hfooter'>
			<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>


</body>
</html>