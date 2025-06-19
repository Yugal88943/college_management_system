<%@page import="com.actionbeans.student.StudentUpdateDetailsActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Update Profile</title>
</head>
<body>

<jsp:include page="head_menu.jsp"></jsp:include>
	
<div class ='employee-content1'>
	<div class='wrapper'>	
<jsp:include page="studentMenu.jsp"></jsp:include>
<jsp:useBean id="student"  class="com.beans.BeanClass" scope="application" ></jsp:useBean>
	
		<%
							String msg = "";
																if(request.getAttribute("msg")!=null)
																{
																	 msg = request.getAttribute("msg").toString();
																}
																else{
																		msg = "";	
																}
																
															BeanClass bean=new BeanClass();
															StudentUpdateDetailsActionBean action = new StudentUpdateDetailsActionBean(bean);
															Long reg_no= Long.parseLong(session.getAttribute("username").toString());
															bean.setReg_no(reg_no);
															bean=action.ViewRecord();
						%>
			
			<form action="Student_Update_Profile"  method="post">
			<table align="center" class='table'>
					<tr><th colspan="2" align = "center"><h2><font color="crimson" ><b>Update Details</b></font></h2></th></tr>
					<tr>
							<td colspan=2 align="center"><font color="green"><b><%=msg %></b></font></td>
					</tr>
			
					<tr>
							<td class='label'>Reg No. </td><td><input class='input' type="text" disabled="disabled" name="reg_no" value="<%=bean.getReg_no()%>"></td>
					</tr>
					<tr>
							<td class='label'>First Name  </td><td><input class='input' type="text" disabled="disabled" name="fname" value="<%=bean.getFirstname()%>"></td>
					</tr>
					<tr>
							<td class='label'>Last Name </td><td><input class='input' type="text" disabled="disabled" name="lname" value="<%=bean.getLastname()%>"></td>
					</tr>
					<tr>
					
							<td class='label'>Gender  </td>
							<td>
							<%
							if(bean.getGender().equalsIgnoreCase("male"))
							{
							%>
							<input type="radio" disabled="disabled" name="gender" checked="checked" value="Male">Male
							<input type="radio" disabled="disabled" name="gender" value="Female">Female
							<% 
							}
							else if(bean.getGender().equalsIgnoreCase("female"))
							{
							%>
							<input type="radio" disabled="disabled" name="gender" value="Male">Male
							<input type="radio" disabled="disabled" name="gender" checked="checked"  value="Female">Female
							<%
							}
							%>
							</td>
					</tr> 
					
					
					<tr><td class='label'>Batch  </td>
						<td> <select name=batch disabled="disabled">
								<option value=<%=bean.getBatch()%>><%=bean.getBatch() %></option>
								   <option value="2010">2009</option>
								  <option value="2010">2010</option>
							  <option value="2011">2011</option>
							  <option value="2012">2012</option>
							  <option value="2013">2013</option>
							    <option value="2010">2014</option>
							  <option value="2011">2015</option>
							</select> 
						</td></tr>
					<tr><td class='label'>Course </td>
						<td> <select name=course disabled="disabled">
							<option value=<%=bean.getCourse() %>><%=bean.getCourse() %></option>
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
					<tr><td class='label'>Prev. Qualification  </td>
						<td> <select name=qualification disabled="disabled">
							<option value=<%=bean.getQualification() %>><%=bean.getQualification() %></option> 
							  <option value="+2 Non.Med">+2 Non.Med</option>
							  <option value="B.Tech">B.Tech</option>
						  <option value="BCA">BCA</option>
							</select> 
						</td>
				</tr>
					<tr>
							<td class='label'>Prev. Marks </td><td><input class='input' type="text" disabled="disabled" name="marks" value="<%=bean.getMarks()%>"></td>
					</tr>
					<tr>
							<td class='label'>Contact No. </td><td><input class='input' type="text" disabled="disabled" name="contact" value="<%=bean.getContact()%>"></td>
					</tr>
					<tr>
							<td class='label'>Mail ID </td><td><input class='input' type="text" disabled="disabled" name="mailid" value="<%=bean.getMailid()%>"></td>
					</tr>
					<tr>
							<td>Father Name </td><td><input class='input' type="text" name="fathername" value="<%=bean.getFather_name()%>"></td>
					</tr>
					<tr>
							<td>Address</td><td><input class='input' type="text" name="address" value="<%=bean.getAddress()%>"></td>
					</tr>
					<tr>
							<td>Date of Birth </td><td><input class='input' type="text"  name="dob" value="<%=bean.getDob()%>"></td>
					</tr>
					<tr><td class='label'>Question </td>
						<td> <select name="question">
								<option value=<%=bean.getQuestion() %>><%=bean.getQuestion() %></option>
							  <option value="What was your first phone number?">What was your first phone number?</option>
							  <option value="What is name of your best friend?">What is name of your best friend?</option>
							  <option value="Who is your favorite person?">Who is your favorite person?</option>
							  <option value="Which color is your favorite?">Which color is your favorite?</option>
							  <option value="What is your pet's name?">What is your pet's name?</option>
							</select> 
						</td></tr>
					<tr>
							<td class='label'>Answer </td><td><input class='input' type="text" name="answer" value="<%=bean.getAnswer()%>"></td>
					</tr>
					<tr><td align ="center" colspan="2"><input class='submit'type="submit" value="Submit">
					<input class='submit' type="reset" value="Reset">
					<a href="updates.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				</td>
				</tr>
			
			</table>
			
	</form>			
</div>
</div>

</body>
</html>