<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password</title>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>

	
<div class ='employee-content1'>
	<div class='wrapper1'>
	
	<%		String msg = "";
				String reg_no="";
				String password="";
				if(request.getAttribute("msg")!=null)
				{
					 msg = request.getAttribute("msg").toString();
					 reg_no=request.getAttribute("reg_no").toString();
					 password = request.getAttribute("password").toString();
				}
				else
				{
						msg = "";	
					
				}
		%>
	
	<form action="Forget_Password" method="post" >
	
		<table align="center" class='table'>
		<tr><td><b>Reg No./ID :</b></td>
						<td> <input class='input' type = "text" name="username" value=""></td></tr>
		<tr><td><b>User Type :</b> </td>
						<td> <select name="user_type" disabled="disabled">
							
							  <option value="student">Student</option>
							</select>
						</td></tr>
		<tr><td colspan=2><input class='submit' type="reset" value="Reset"><input class='submit' type="submit" value="Submit">
				</td>
				</tr>
		
		</table>
		<%      out.print(msg);  %>
		</form>
</div>
</div>
</body>
</html>




