<%@page import="com.database.Dao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.actionbeans.hostel.HostelFormActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create Student In Hostel</title>

<script type="text/javascript">
	function valid()
	{
		var x=document.getElementById("mailid").value;
		var a=x.indexOf("@");
		var d=x.lastIndexOf(".");
		
		
		//var wname1 =document.hostelform.wname.value;
		var troom1 =document.hostelform.troom.value;
		var sname1 =document.hostelform.sname.value;
		
		//if(wname1=="" || troom1=="" || sname1==""  )
		
		if(troom1=="" || sname1==""  )
		{
				alert("Please Fill All The Fields");
				return false;
		}
		
		var course1=document.hostelform.course.value;
		if (course1.match("select")) 
		{
	         alert("Please select your Course");
	         return false;
	    }
	    
	    var rollno =document.hostelform.rollno.value;
		var roomno =document.hostelform.roomno.value;
		var floor =document.hostelform.floor.value;
		
		if(rollno=="" || roomno=="" ||floor==""  )
		{
				alert("Please Fill All The Fields");
				return false;
		}
		
		var contact =document.hostelform.contact.value;
		var expression =/^ [0-9]+  $/ ;
		
		if(contact.length>10)
		{
			alert("Contact number out of range...");
			return false;
		}
   
	    /*if(!contact.match(expression))
			{
				alert("Contact number should be in digits");
				return false;
			}
		*/
		
		/*var mailid =document.hostelform.mailid.value;
		if(mailid=="")
			{
				alert("Please Fill All The Fields");
				document.getElementById("mailid").focus();
				return false;
			}
		*/
		
		
		if(document.getElementById("mailid").value=='');
		{
			alert("Please Enter Your Emial");
			document.getElementById("mailid").focus();
			return false;
		}
		
		if(a<1 || d<a+2)
		{
		alert("Please enter a valid Email");
		document.getElementById("mailid").focus();
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
	  	
	    var address =document.hostelform.address.value;
	    var fees =document.hostelform.address.value;
		if(address=="" || fees=="")
			{
				alert("Please fill all the fields");
				return false;
			}
		
	}
</script>
</head>
<body>

<jsp:include page="head_menu.jsp"></jsp:include>
	
<div class='wrapper'>
<div class='employee-content1'>	

<%		String msg = "";
				if(request.getAttribute("msg")!=null)
				{
					 msg = request.getAttribute("msg").toString();
				}
				else
				{
					msg = "";	
				}
				
				String w_username=(String)session.getAttribute("warden_name");
				String f_name=null;
				
				PreparedStatement prepare;
				Connection connection;
				ResultSet res;
			
				String selectQuery="select firstname from warden_details where username=?";
				connection = Dao.getConnect();
			
				try{
					prepare=connection.prepareStatement(selectQuery);
					prepare.setString(1, w_username);	
					res=prepare.executeQuery();
					while(res.next())
					{
						f_name=res.getString(1);
						System.out.print("JSP Warden Name"+f_name);
						
					}
					
				}
				catch(Exception e)
				{
					e.printStackTrace();
				}
				
				%>
				
				

<form action="Create_Student" name="hostelform" onsubmit ="return valid()"  method="post">

<h1><center><font color="midnightblue" >Hostel Form</font></center></h1>
<table align="center" class='table'>
<tr>
	<td colspan=2 align="center"><font color="green"><b><%=msg %></b></font></td>
</tr>

<tr><td class='label'>Warden Name  </td> <td><input class='input' type="text" name="wname" value="<%=f_name %> " ></td>
<tr><td class='label'>Total Rooms  </td> <td><input class='input'type="text" name="troom" value=""></td>
<tr><td class='label'>Student Name </td> <td><input class='input' type="text" name="sname" value=""></td>

<tr><td class='label'>Course</td>
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
						</td>
</tr>
				
<tr><td class='label'>Roll No  </td> <td><input class='input' type="text" name="rollno"></td>
<tr><td class='label'>Room No  </td> <td><input class='input' type="text" name="roomno"></td>
<tr><td class='label'>Floor No  </td> <td><input class='input' type="text" name="floor"></td>
<tr><td class='label'>Contact No  </td> <td><input class='input' type="text" name="contact"></td>
<tr><td class='label'>Email  </td> <td><input class='input' type="text" name="mailid"></td>
<tr><td class='label'>Gender  </td> <td><input type="radio" name="gender" value="male"> Male <input type="radio" name="gender" value="Female"> Female</td>
<tr><td class='label'>Address </td> <td><textarea rows=3 columns=5 name="address"></textarea>
<tr><td class='label'>Fees  </td> <td><input class='input' type="text" name="fees"></td>

<tr><td colspan=2><input class='submit' type="submit" value="Save"><input class='submit' type="reset" value="Reset">
	<a href="hostel.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
</td></tr>
</table>
				
</form>

</div>
</div>


<div class='hfooter'>
	<jsp:include page="view_updates_visitors.jsp"></jsp:include>
</div>
</body>
</html>