<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Of students</title>

<script type="text/javascript">

function valid()
{
	
	var batch=document.myform.batch.value;
	if (batch.match("select")) 
	{
         alert("Please select Batch");
         return false;
    }
	
	var course=document.myform.course.value;
	if (course.match("select")) 
	{
         alert("Please select Course");
         return false;
    }
	
}

</script>

</head>
<body>


<jsp:include page="head_menu.jsp"></jsp:include>
<div class='employee-content1'>		
<div class='wrapper'>

	<form action = "List_Students" method="post" name="myform" onsubmit="return valid()">

<table align="center" class='table'>

<tr><th colspan="2"><h2><font color="crimson"><b>To delete Students of</b></font></h2></th>
					</tr>

<tr><td class='label'><b>Batch  </b> </td>
						<td> <select name=batch>
								<option value="select">-Select-</option>
								<option value="2009">2009</option>
								  <option value="2010">2010</option>
							  <option value="2011">2011</option>
							  <option value="2012">2012</option>
							  <option value="2013">2013</option>
							  <option value="2014">2014</option>
							  <option value="2015">2015</option>
							  
							</select> 
						</td></tr>
						<tr>
						
						<tr><td class='label'><b>Course </b>  </td>
						<td> <select name=course>
							<option value="select">-Select-</option>
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
						<tr>
		<td align ="center" colspan=2><input class="submit" type="submit" value="Submit">
				<input class="submit" type="reset" value= "Reset">
				<a href="employeeHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a></td></tr>


</table>

</form>
</div>
</div>

<div class='sfooter'>
			<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>
</body>
</html>