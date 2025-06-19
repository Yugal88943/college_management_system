<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions</title>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>
<div class='employee-content1'>		
<div class='wrapper'>

			<center>	
				<a href="employeeHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				<h2><font color="crimson" >Welcome To Examination Maintenance</font></h2><br>
		
			<table align="center" class='table'>
				<tr>
					<td><a href="addQuestions.jsp"><input class='submit' type="button" name="btn" value="Add Questions"/></a></td>
					<td><a href = "view_questions.jsp"><input class='submit' type="button" name="btn" value="View Questions"/></a></td>
					<td><a href = "deleteQuestions.jsp"><input class='submit' type="button" name="btn" value="Delete Questions"/></a></td>
					<td><a href = "emp_viewresults.jsp"><input class='submit' type="button" name="btn" value="View Results"/></a></td>
				</tr>
			</table>
		
			</center>
	
</div>
</div>


</body>

</html>