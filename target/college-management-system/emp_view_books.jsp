<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Books</title>
</head>
<body>

<jsp:include page="book.jsp"></jsp:include>
<div class='employee-content1'>		
<div class='wrapper'>
<form action="Display_Books" method="post">
	<table align = "center" class='table'>
	<tr><th colspan="2"><h2><font color="crimson"><b>Display Books of</b></font></h2></th></tr>
						<tr>
	
	<tr><td class='label'><b>Course </b> </td>
						<td > <select name=course>
							<option>-Select-</option>
							  <option value="B.Tech (ECE)">B.Tech (ECE)</option>
							  <option value="B.Tech (CSE)">B.Tech (CSE)</option>
							  <option value="B.Tech (IT)">B.Tech (IT)</option>
							  <option value="B.Tech (ME)">B.Tech (ME)</option>
							  <option value="B.Pharmacy">B.Pharmacy</option>
							  <option value="BBA">BBA</option>
							  <option value="BCA">BCA</option>
							  
							  <option value="M.Tech (ECE)">M.Tech (ECE)</option>
							  <option value="M.Tech (CSE)">M.Tech (CSE)</option>
							  <option value="M.Tech (IT)">M.Tech (IT)</option>
							  <option value="M.Tech (ME)">M.Tech (ME)</option>
							  <option value="M.Pharmacy">M.Pharmacy</option>
							  <option value="MBA">MBA</option>
							  <option value="MCA">MCA</option>
							</select> 
						</td></tr>
							  
							 <tr><td align ="center" colspan="2"><input class='submit' type="submit" value="Submit"><input class='submit' type="reset" value="Reset">
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