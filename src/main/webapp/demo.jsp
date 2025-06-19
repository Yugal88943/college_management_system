<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<script type="text/javascript">
function checkBatch()
{
	var batch=document.myform.batch.value;

	
	if (batch=="select") 
	{
         alert("Please select one user");
         return false;
     }
	
}




</script>

<body>
<form action="" name="myform" onsubmit="return checkBatch()">
Batch<select name=batch>
								<option value="select">-Select-</option>
								  <option value="2009">2009</option>
							  <option value="2010">2010</option>
							  <option value="2011">2011</option>
							  <option value="2012">2012</option>
							   <option value="2013">2013</option>
							  <option value="2014">2014</option>
							  <option value="2015">2015</option>
							  
							</select> 
<input type="submit" value="Check">
</form>
</body>
</html>