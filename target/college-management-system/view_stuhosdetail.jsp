<%@page import="com.actionbeans.hostel.HostelFormActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Students In Hostel</title>
</head>
<body>


<jsp:include page="head_menu.jsp"></jsp:include>
<div class='employee-content1'>		
	<div class='wrapper'>

			<%
				Vector<Object> row=null;
					Vector<Vector<Object>> data=null;
					Iterator<Vector<Object>> itr_row = null;
					Iterator<Object>       itr_col=null;
					BeanClass bean = new BeanClass();
					
					HostelFormActionBean action = new HostelFormActionBean(bean);
							data = action.listStudent();
					
					 itr_row  =   data.iterator(); 
					    if(data.size()>0)
				{
			%>

		<center><h2><font color="midnightblue" ><b>List of Students in Hostel</b></font></h2></center>
								
		
			<table align="center" class='table' border=1 width="1200">
		
					<tr>
								
								<th align="center">Warden Name</th>
									<th align="center">Total rooms</th>
									<th align="center">Student Name</th>
									<th align="center">Course</th>
									<th align="center">Roll No</th>
									<th align="center">Room No</th>
									<th align="center">Floor No</th>
									<th align="center">Phone No</th>
									<th align="center">E-Mail</th>
									<th align="center">Gender</th>
									<th align="center">Address</th>
									<th align="center">Fees</th>
					</tr>
						
					<%			
								itr_row = 	data.iterator();
					
								while(itr_row.hasNext())
								{
									 row  =     itr_row.next();
									itr_col =row.iterator();		

					%>
					
					
					<tr>
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
							<h3 align=center>Record not exist.</h3>		
			<%				
				}		
						
		%>
		</div>
	<div class='footer11'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>
</div>
</body>
</html>