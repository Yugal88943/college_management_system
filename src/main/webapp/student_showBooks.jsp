<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Show Books</title>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>


<div class ='employee-content1'>
	<div class='wrapper'>
		<jsp:include page="studentMenu.jsp"></jsp:include>	
		<table align ="center" class='table'>
		<tr><td colspan="2"><h2><font color="crimson" ><b>View Books By</b></font></h2></td> </tr>
		<tr><td><a href="student_selectSem_showBook.jsp"><input type="submit" class="submit" value="Semester"></a></td>
			<td><a href="student_selectSub_showBooks.jsp"><input type="submit" class="submit" value="Subject"></a>
		</td></tr>		
		
		
		
		</table>
	</div>
</div>
</body>
</html>