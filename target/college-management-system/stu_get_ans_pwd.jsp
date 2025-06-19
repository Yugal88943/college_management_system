<%@page import="com.actionbeans.login.ResetPasswordActionBean"%>
<%@page import="com.beans.BeanClass"%>
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
	<div class='employee-content1'>
	<%
			String msg = "";
				if(request.getAttribute("msg")!=null)
				{
					 msg = request.getAttribute("msg").toString();
				}
				else{
						msg = "";	
				}
					
				BeanClass bean = new BeanClass();
				String username= session.getAttribute("username").toString();
				bean.setUsername(username);
				
				ResetPasswordActionBean action = new ResetPasswordActionBean(bean);
				bean = action.stuGetAns();
		%>

		<form action="Reset_Password" method="post">
		
		
		<table align="center" class='table'>
			<tr><th colspan="2" align = "center"><h2><font color="midnightblue" ><b>Answer the Security Question</b></font></h2></th></tr>
					<tr><td colspan="2" align = "center"><h3><font color="Green" ><b><%=msg %></b></font></h3></td></tr>
			
		<tr>
					<td><b>Reg No. </b> </td>
					<td><input class='input' type="text" disabled="disabled" name="reg_no" value="<%=bean.getUsername()%>"></td>
					</tr>
					<tr>
					<td><b>Name </b> </td>
					<td><input class='input' type="text" disabled="disabled" name="fname" value="<%=bean.getFirstname()+" "+bean.getLastname()%>"></td>
					</tr>
					<tr>
					<td><b>Security Question </b> </td>
					<td><input class='input' type="text" size="35" disabled="disabled" name="question" value="<%=bean.getQuestion()%>"></td>
					</tr>
					<tr>
					<td><b>Answer  </b></td>
					<td><input class='input' type="text" name="answer" value=""></td>
					</tr>
					<tr>
								<td colspan=2> <input class='submit' type="reset" value="Reset"><input class='submit'type="submit" value="Submit"></td>
				</tr>
					
		
		
		
		</table>
		
		
		</form>

	</div>
</div>
</body>
</html>