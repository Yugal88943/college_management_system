<%@page import="com.actionbeans.admin.AdminActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Employee</title>
<link href='homepage.css' rel='stylesheet' type='text/css'>

</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>			
		<div class='wrapper'>
		<div class ='employee-content'>

			<%
				Vector<Object> row=null;
					Vector<Vector<Object>> data=null;
					Iterator<Vector<Object>> itr_row = null;
					Iterator<Object>       itr_col=null;
					BeanClass bean = new BeanClass();
					
					AdminActionBean action = new AdminActionBean(bean);
					data = action.listEmployee();
					
					 itr_row  =   data.iterator(); 
					    if(data.size()>0)
					    	
				{
			%>
<a href="AdminHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
		<center><h2><font color="crimson" ><b>List of Employees</b></font></h2></center>
								
		</div>
			

		<div class='employee-content1'>	 		
			<table align="center" class='table' border=1 width='1200'>
		
					<tr>
								
								<th align="center">First Name</th>
									<th align="center">Last Name</th>
									<th align="center">Username</th>
									<th align="center">Password</th>
									<th align="center">Mail ID</th>
									<th align="center">Contact</th>
									
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
			
		</div>
		<div class="hfooter">
					<jsp:include page="view_updates_visitors.jsp"></jsp:include>
			</div>
		
</body>
</html>