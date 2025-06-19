<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Books Maintenance</title>
</head>
<body>

<jsp:include page="head_menu.jsp"></jsp:include>
<div class='employee-content1'>		
<div class='wrapper'>
		
			<center>	
				<a href="employeeHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				<h2><font color="crimson" >Welcome To Books Maintenance</font></h2><br>
		
			<table align="center" class='table'>
				<tr>
					<td><a href = "emp_insert_books.jsp"><input class='submit' type="button" name="btn" value="Insert Book"/></a></td>
					<td><a href = "emp_view_books.jsp"><input class='submit' type="button" name="btn" value="View Books"/></a></td>
					<td><a href="emp_delete_books.jsp"><input class='submit' type="button" name="btn" value="Delete Books"/></a></td>
		
				</tr>
			</table>
		
			</center>
	
</div>
</div>
</body>
</html>