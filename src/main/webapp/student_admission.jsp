<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Admission</title>
<script type="text/javascript">

function valid()
{
	var firstname=document.myform.fname.value;
	var lastname=document.myform.lname.value;

	
	if(firstname=="" || lastname=="")
		{
			alert("Please Fill All The Fields");
			return false;
		}
	
	
	var genders = document.getElementsByName("gender");
    if (genders[0].checked == true) 
    {
        alert("Your gender is male");
    }
    else if (genders[1].checked == true) 
    {
        alert("Your gender is female");
    } 
    else 
    {
        alert("you must select your gender");
        
        return false;
    }
  	

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
	

	var qualification=document.myform.qualification.value;
	if (qualification.match("select")) 
	{
         alert("Please select Qualification");
         return false;
    }
	
	
	var marks=document.myform.marks.value;
	var contact=document.myform.contact.value;
	var c=/^[0-9]+$/;
	
	var mailid=document.myform.mailid.value;

	if(marks=="" || contact=="" || mailid=="")
	{
		alert("Please Fill All The Fields");
		return false;
	}
	

	if(contact.length>10)
		{
		
			alert("Contact Number out of range");
			return false;
		
		}
	if(!contact.match(c))
	{
		alert("Contact Number Should be in digits");	
		return false;
	}
	  return true;
	    
}

function reset_msg() 
{
    document.getElementById('msg').innerHTML = '';
   
}
</script>
</head>

<body>
<jsp:include page="head_menu.jsp"></jsp:include>

<div class ='employee-content1'>
	<div class='wrapper'>
<%		String msg = "";
				String reg_no="";
				String password="";
				if(request.getAttribute("msg")!=null)
				{
					 msg = request.getAttribute("msg").toString();
					 reg_no=request.getAttribute("reg_no").toString();
					 password = request.getAttribute("password").toString();
				}
				else
				{
						msg = "";	
					
				}
		%>
		
		<form action="Student_Admission" method="post" name="myform" onsubmit="return valid()">
			<section class="admin-container">
				<aside class="left_sec11">
					<img src="pics/adm_open.jpg">
				</aside>
				
				<aside class="left_sec22">
				
		
				<table align = "center" class ='table'>
						<tr><th colspan="2"><h2><font color="midnightblue"><b> New Admission</b></font></h2></th></tr>
						<tr>
									<td colspan=2 align="center"><font color="red"><b><%=msg %></b></font></td>
							</tr>
						<tr>
							<td colspan=2 align="center"><font color="red"><b><%=reg_no %></b></font></td>
						</tr>
					<tr>
							<td colspan=2 align="center"><font color="red"><b><%=password %></b></font></td>
					</tr>
					
					<tr><td class='label'>First Name </td>
						<td> <input class='input' type = "text" name="fname" value=""></td></tr>
					
					<tr><td class='label'>Last Name  </td>
						<td> <input class='input' type = "text" name="lname" value=""></td></tr>
					
					<tr><td class='label'>Gender </td>
					<td><input type="radio" name="gender" value="Male">Male
						<input type="radio" name="gender" value="Female">Female
					</td>
					</tr>
					<tr> <td class='label'>Batch   </td>
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
					
					<tr><td class='label'>Course  </td>
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
				<tr><td class='label'>Prev. Qualification </td>
						<td> <select name=qualification>
							<option value="select">-Select-</option>
							
							  <option value="+2 Non.Med">+2 Non.Med</option>
							  <option value="+2 Arts">+2 Arts</option>
							  <option value="B.Tech">B.Tech</option>
						  <option value="BCA">B.Pharmacy</option>
						  <option value="BCA">BCA</option>
						  <option value="BCA">BBA</option>
							</select> 
						</td>
				</tr>
				<tr><td class='label'>Prev. Marks  </td>
						<td> <input class='input' type = "text" name="marks" value=""></td></tr>
				<tr><td class='label'>Contact No.  </td>
						<td> <input class='input' type = "text" name="contact" value=""></td></tr>
				<tr><td class='label'>Mail ID  </td>
						<td> <input class='input' type = "text" name="mailid" value=""></td></tr>
						
				<tr><td align ="center" colspan="2"><input class='submit' type="submit" value="Submit"><input class='submit' type="reset" value="Reset">
				<a href="employeeHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				
				</td>
				</tr>
				
				</table>
				 <div id="msg"></div>
			
			</aside>
			
			<aside class="right_sec1">
					<jsp:include page="view_updates.jsp"></jsp:include>
			</aside>
				
		
			</form>
					
		</div>
		
	</div>

</body>
</html>