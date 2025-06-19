<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enquiry Form</title>


<script type="text/javascript">

function valid()
{
	
	var name=document.myform.fname.value;
	var lname=document.myform.lname.value;
	var mailid=document.myform.mailid.value;
	var course=document.myform.course.value;
	var phno=document.myform.phno.value;
	var city=document.myform.city.value;
	
	var c=/^[0-9]+$/;
	var check;

	if(name=="" || lname=="" || mailid==""|| course=="" || phno=="" || city=="")
	{
		alert("Please Fill All The Fields");
		return false;
	}
	
	if(!phno.match(c))	
	{
		alert("Contact Number Should be in digits");	
		return false;
	}

	
	if(phno.length>10)
	{
	
		alert("Contact number should be in 10 digits.");
		return false;
	
	}


}

</script>

</head>
<body>

<jsp:include page="head_menu.jsp"></jsp:include>

<form action='Create_Enquiry' method="post" name="myform" onsubmit="return valid()">

				<%		String msg = "";
				if(request.getAttribute("msg")!=null)
				{
					 msg = request.getAttribute("msg").toString();
				}
				else
				{
					msg = "";	
				}
		%>

<div class='wrapper1'>
	<section class='container'>
	
	 <aside class="enqleftsec">
	 	<img src="pics/enquiry1.jpg">
	 	<%	
					out.print(msg); 
				
		%>
	 </aside>
	
	 <aside class="enquiry">
			<h3>Feedback Form</h3>
				<div class="Enqlogin_field">
					<label>First Name</label>
					<input type="text" name="fname" value="">
				</div>	
				
				<div class="Enqlogin_field">
					<label>Lastname</label>
					<input type="text" name="lname" value="">					
				</div>
				
				<div class="Enqlogin_field">
					<label>Email(your email address)</label>
					<input type="text" name="mailid" value="">
				</div>	
				
				<div class="Enqlogin_field">
					<label>Any Suggestion</label>
					<input type="text" name="course" value="">					
				</div>
				
				<div class="Enqlogin_field">
					<label>Contact Number</label>
					<input type="text" name="phno" value="">
				</div>	
				
				<div class="Enqlogin_field">
					<label>City</label>
					<input type="text" name="city" value="">					
				</div>
				
				<table align="right">
					<tr><td><input class='submit' type="submit" value="Submit"></td>
				</table>
										 
				
				
		</aside>
	</section>	
</div>
</form>

</body>
</html>

enquiry_form.jsp