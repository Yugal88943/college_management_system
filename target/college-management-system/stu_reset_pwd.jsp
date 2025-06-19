<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="head_menu.jsp"></jsp:include>
<div class='wrapper'>				
<div class='employee-content'>

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
	<form action = "Set_New_Password" method = "post">
	<table  align="center" class='table'>
		<tr><td colspan = 2 align="center"> <h2><font color="midnightblue">Change Password</font></h2></td></tr>
		<tr><td  colspan = 2 align="center"><h2><font color="green"></font></h2></td></tr>
	
		<tr><td> New Password </td>
		<td><input class='input'type="password" name = "newpwd" value=""></td></tr>
		
		<tr><td>Confirm Password </td>
		<td><input class='input' type="password" name = "confrmpwd" value=""></td></tr>
		
		<tr><td colspan=2><input class='submit' type="reset" value= "Reset"> <input class='submit' type="submit" value="Done"></td>
		</tr>
	</table>
	<% out.print(msg); %>
	</form>
</div>
</div>
</body>
</html>