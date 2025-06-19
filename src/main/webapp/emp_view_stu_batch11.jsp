<%@page import="com.actionbeans.employee.StudentsListActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
TD{font-family:Arial; font-size:10pt;}

</style>

</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>
<div class ='employee-content1'>
			<div class='wrapper'>
<%
	Vector<Vector<Object>>  data=null;
	Vector<Object>    row   = null;
	Iterator<Vector<Object>> itr_row = null;
	Iterator<Object>       itr_col=null;
	int i=0;
	BeanClass bean = new BeanClass();
	bean.setBatch(Integer.parseInt(session.getAttribute("batch").toString()));
	
	 StudentsListActionBean action=new StudentsListActionBean(bean);
	       
 			data = action.listStudentsByBatch();
		   
 			 itr_row  =   data.iterator(); 
 		    if(data.size()>0)
 			{
%>
					<a href="emp_view_stu_batch.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
 					<center><h2><font color="crimson" ><b>List of Students by Batch</b></font></h2></center>
 				<table align="center"  border=1 class='table'>
 					
 					<tr>
 					<th align="center">S.no</th>
 					
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
								while(itr_row.hasNext())
								{i++;
									 row  =     itr_row.next();
									itr_col =row.iterator();		

		%>
					<tr><td><%=i %></td>
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
				</table>
		<%
				}
				else{
	%>				
							<h3 align=center><font color=red size=6>Record not exist.</font></h3>		
		<%				
				}		
						
		%>
		
</div>
</div>	

<div class="hfooter">
	<jsp:include page="view_updates_visitors.jsp"></jsp:include>
</div>	

</body>
</html>