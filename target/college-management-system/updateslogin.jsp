<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>News Updates Login</title>


<script type="text/javascript">

function valid()
{
	
	var name=document.myform.username.value;
	var pass=document.myform.password.value;
	
	if(name=="")
	{
		alert("User Name cannot be empty");
		return false;
	}
	
	if(pass=="")
	{
		alert("Password cannot be empty");
		return false;
	}
	
}

</script>


</head>
<body>


<jsp:include page="head_menu.jsp"></jsp:include>

	<div class='wrapper'>
	
	<div class='content'>
								
				<div id='login'>
				<h2 style="text-align:center"><font color="midnightblue"> Login Here </font></h2><br/>
				
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
				</div>
	</div>
	
		
			<form  name="myform" onsubmit="return valid()" action="Login_Check1" target="_parent" method="post" >
				
				<section id='login-content'>
					
					<aside class='leftsecl'>				
						<img src='pics/login_icon.gif'>
					</aside>
					
					<aside class='right_secl'>
										
					<table align = "center"><br/>
															
						<tr><td>Username :</td>
						<td> <input type = "text" name="username" value=""></td></tr>
								
						<tr><td>Password&nbsp; : </td>
						<td> <input type = "password" name="password" value=""></td></tr>
								
						<tr><td>User Type : </td>
						<td> <select name="user_type" disabled="disabled">
							
							  <option value="employee">Teacher</option>
							</select>
						</td></tr>
							
						<tr><td><input class='submit' type="submit" value="Submit"></td>
						<td><input class='submit' type="reset" value="Reset"></td>
						</tr>
						
					</table>
						 
						 
					<%
						out.print(msg); 				
					 %>
					</aside>
				
				</section>
			
			</form>
			
	</div>

</body>
</html>