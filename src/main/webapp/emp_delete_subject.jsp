<%@page import="com.actionbeans.employee.EmployeeSubjectsActionBean"%>
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
<title>Teacher delete Sub</title>
</head>
<body>
<jsp:include page="subjects.jsp"></jsp:include><br><br>
<div class='employee-content1'>		
<div class='wrapper'>
		
<%
String msg="";
if(request.getAttribute("msg")!=null)
{
	 msg = request.getAttribute("msg").toString();
}
else
{
	msg = "";	
}
%>

<form action="Delete_Subject" method="post">
			<%
				Vector<Vector<Object>>  data=null;
								Vector<Object>    row   = null;
								Iterator<Vector<Object>> itr_row = null;
								Iterator<Object>       itr_col=null;
								ResultSet resultset = null;
						    	BeanClass bean = new BeanClass();
						    	
						    	bean.setCourse(session.getAttribute("course").toString());
						    	bean.setSem(Integer.parseInt(session.getAttribute("sem").toString()));
						    	
						    	EmployeeSubjectsActionBean action = new EmployeeSubjectsActionBean(bean);
						    	resultset = action.getSub_Code();
						    	data= action.displaySubjects();
						    	itr_row  =   data.iterator(); 
							    if(data.size()>0)
								{
			%>
					<center><h2><font color="crimson" ><b>List of Subjects</b></font></h2></center>
					<% out.print(msg); %>
					<table align="center"  border=1 class='table'>
				    
					<tr>	<th align="center">Delete</th>
								<th align="center">Subject Name</th>
									<th align="center">Subject Code</th>
									<th align="center">Paper ID</th>
									<th align="center">Course</th>
									<th align="center">Semester</th>
									<th align="center">Max Marks</th>
									<th align="center">Min Marks</th>
									
				</tr>
						
			<%			
 									itr_row = 	data.iterator();					
 									while(itr_row.hasNext() && resultset.next())
 									{
 									
 										 row  =     itr_row.next();
 										itr_col =row.iterator();	
 										
 										

 			%>
 						<tr><td align="center"><input type="checkbox" name= "delete" value="<%=resultset.getString(3)%>"></td>
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
 					<tr><td colspan="8" align= "center"><input type="submit" value="Delete Selected"></td></tr>
 					</table>
 			<%
 					}
 									
 					else{
 		%>				
 								<h3 align=center>No Record exist.</h3>		
 			<%				
 					}		
 							
 			%>
 			
 			</form>
 </div>
 </div>
</body>
</html>