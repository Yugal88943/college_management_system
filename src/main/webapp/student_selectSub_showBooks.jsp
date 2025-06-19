<%@page import="java.sql.ResultSet"%>
<%@page import="com.actionbeans.student.StudentShowBooksActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Subject </title>
</head>
<body>

<jsp:include page="student_showBooks.jsp"></jsp:include><br><br>
<div class ='employee-content1'>
	<div class='wrapper'>
<form action = "student_showBooksBySubject.jsp" method="post">

<table align="center" class='table'>

<%
	BeanClass bean=new BeanClass();
		bean.setCourse(session.getAttribute("course").toString());
		StudentShowBooksActionBean action = new StudentShowBooksActionBean(bean);
		ResultSet resultSet=action.getSubCode();
%>
						<tr><td class='label'><b>Subject Code  </b></td>
						<td> 
						<select name=sub_code>
								<option>-Select-</option>
								<%
								while(resultSet.next())
								{
									%>
								  <option value="<%=resultSet.getString(2) %>"><%=resultSet.getString(2)%> (<%=resultSet.getString(1)%>)</option>
							  <%  } %>
					</select>	</td></tr>
						<tr><td align ="center" colspan=2><input class='submit' type="submit" value="Submit">
				<input class='submit' type="reset" value="Reset">
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