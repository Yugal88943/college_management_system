<%@page import="com.actionbeans.employee.StudentsListActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Students List</title>

<style type="text/css">
TD{font-family:Arial; font-size:10pt;}

</style>

</head>
<body>

<jsp:include page="head_menu.jsp"></jsp:include>


<div class='employee-content1'>		
<div class='wrapper'>
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
				
<form action="Delete_Students" method="post">
<%
	Vector<Vector<Object>>  data=null;
	Vector<Object>    row   = null;
	Iterator<Vector<Object>> itr_row = null;
	Iterator<Object>       itr_col=null;
	ResultSet resultset=null;
	
	BeanClass bean = new BeanClass();
	bean.setBatch(Integer.parseInt(session.getAttribute("batch").toString()));
	bean.setCourse(session.getAttribute("course").toString());
	 StudentsListActionBean action=new StudentsListActionBean(bean);
	       resultset=action.getRegNoByBatch_Course();
 			data = action.listStudents();
		   
 			 itr_row  =   data.iterator(); 
 		    if(data.size()>0)
 			{
%>
	
	<a href="emp_listStu.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
	
	<center><h2><font color="crimson" ><b>List of Students by Batch</b></font></h2></center>
 				<table align="center"  border=1 class='table'>
 				
 					
 					<tr>		<th align="center">Delete</th>
 						<th align="center">Registration no.</th>
 									<th align="center">First Name</th>
 									<th align="center">Last Name</th>
 									<th align="center">Gender</th>
 									<th align="center">Batch</th>
 									<th align="center">Course</th>
 									<th align="center">Prev. Qualification</th>
 									<th align="center">Prev. Marks</th>
 									<th align="center">Contact</th>
 									<th align="center">Mail ID</th>
 									<th align="center">Password</th>
 									<th align="center">Father Name</th>
 									<th align="center">Address</th>
 									<th align="center">Date Of Birth</th>
 									<th align="center">Security Question</th>
 									<th align="center">Answer</th>
 				</tr>
 						
 			<%			
 									itr_row = 	data.iterator();					
 									while(itr_row.hasNext() && resultset.next())
 									{
 									
 										 row  =     itr_row.next();
 										itr_col =row.iterator();	
 										
 										

 			%>
 						<tr><td align="center"><input type="checkbox" name= "delete" value="<%=resultset.getLong(1)%>"></td>
 			<%							
 										while(itr_col.hasNext())
 										{
 											
 								%>
 											
 											<td><%=itr_col.next() %></td>
 											
 								<%		
 										}
 										
 			
 			%>
 						</tr>
 			<%
 									}
 									
 									
 			%>
 					<tr><td colspan="17" align= "center"><input type="submit" value="Delete Selected"></td></tr>
 					
 					</table>
 					
 					
 			<%
 					}
 									
 					else{
 		%>				
 								<h3 align=center>No Record exist.</h3>		
 			<%				
 					}		
 							
 			%>
 			<%      out.print(msg);  %>
 			</form>
 </div>
 </div>
 
<div class="hfooter">
	<jsp:include page="view_updates_visitors.jsp"></jsp:include>
</div>	
</body>
</html>