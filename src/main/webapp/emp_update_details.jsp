<%@page import="com.actionbeans.employee.EmployeeUpdateDetailsActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Update Detail</title>
</head>
<body>


<jsp:include page="head_menu.jsp"></jsp:include>
	<div class ='employee-content1'>
			<div class='wrapper'>
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
		bean.setFirstname(session.getAttribute("firstname").toString());
		bean.setUsername(session.getAttribute("username").toString());
		
		EmployeeUpdateDetailsActionBean action= new EmployeeUpdateDetailsActionBean(bean);
		
		//bean= action.displayRecord();
		bean=action.displayRecord();
%>

	<form action="Update_Details" method="post">
	
		<table align="center" class='table'>
					<tr><th colspan="2" align = "center"><h2><font color="crimson" ><b>Update Details</b></font></h2></th></tr>
					<tr>
							<td colspan=2 align="center"><font color="green"><b><%=msg %></b></font></td>
					</tr>
					<tr>
							<td class='label'>First Name  </td><td><input class='input' type="text" disabled="disabled" name="fname" value="<%=bean.getFirstname()%>"></td>
					</tr>
					<tr>
							<td class='label'>Last Name  </td><td><input class='input' type="text" disabled="disabled" name="lname" value="<%=bean.getLastname()%>"></td>
					</tr>
					<tr>
							<td class='label'>User Name  </td><td><input class='input' type="text" disabled="disabled" name="username" value="<%=bean.getUsername()%>"></td>
					</tr>
					<tr>
							<td class='label'>Mail ID  </td><td><input class='input' type="text"  name="mailid" value="<%=bean.getMailid()%>"></td>
					</tr>
					<tr>
							<td class='label'>Contact No.  </td><td><input class='input' type="text" name="contact" value="<%=bean.getContact()%>"></td>
					</tr>
					<tr>
								<td colspan=2><input class='submit' type="submit" value="Update"> <input class='submit' type="reset" value="Reset">
								<a href="employeeHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
								</td>
				</tr>
				</table>			
	
	</form>
</div>
</div>

<div class='footer11'>
			<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>

</body>
</html>