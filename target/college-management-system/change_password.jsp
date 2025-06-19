<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
 
<!-- 
<script type="text/javascript">
function valid()
{
	var pwd=document.pswd.newpwd.value;
	var expression=/^[0-9]+[a-z]+[A-Z]$/ ;
	if(!pwd.match(expression))
		{
			alert("Password should be in digits or alphabets");
			return false;
		}
}

</script>
-->

</head>

<body>
<jsp:include page="head_menu.jsp"></jsp:include>

<div class ='employee-content1'>
			<div class='wrapper'>
<%
				String msg1="";
				String msg2="";
				String msg="";
				if(request.getAttribute("msg")!=null)
				{
				
					if(request.getAttribute("msg").toString().equalsIgnoreCase("Wrong Password"))
					{
						 msg1 = request.getAttribute("msg").toString();
						msg2="";
					}
					
					else if(request.getAttribute("msg").toString().equalsIgnoreCase("Password Mismatch"))
					{
						msg1="";
						msg2 = request.getAttribute("msg").toString();
					}
					else
					{
						msg= request.getAttribute("msg").toString();
					}
					
				}
				else
				{
					msg="";
				}


%>

    <form action = "Changepassword" method = "post" name="pswd" onsubmit="valid()">   

<!--  <form action = "Changepassword" method = "post" >-->

<table align="center" class='table'>

	<tr><td colspan = 2 align="center"> <h2><font color="crimson"><b>Reset Password</b></font></h2></td></tr>
	
	<tr><td  colspan = 2 align="center"><h2><font color="green"><b><%=msg %></b></font></h2></td></tr>
	
	<tr> <td class='label'> Old Password</td>
		<td><input class='input' type="text" name = "oldpwd" value=""></td><td><font color="red"><b><%=msg1 %></b></font></td></tr>
	
	
	<tr><td class='label'>New Password</td>
		<td><input class='input' type="text" name = "newpwd" value=""></td></tr>
	
	<tr><td class='label'>Confirm Password</td>
		<td><input class='input' type="text" name = "confrmpwd" value=""></td><td><font color="red"><b><%=msg2 %></b></font></td></tr>
		
	<tr><td colspan =2> <input class='submit' type="submit" value="Submit"><input class='submit' type="reset" value= "Reset">
	<a href="employeeHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
	</td></tr>
	
</table>

</form>
</div>
</div>

<div class='chgfooter'>
			<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>


</body>
</html>