<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@page import="com.beans.BeanClass"%>
<%@page import="com.actionbeans.hostel.HostelFormActionBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Student Details Of Hostel</title>
</head>

<body background='C:/Users/Divya/Desktop/tw6.jpg'>

<jsp:include page="head_menu.jsp"></jsp:include>	
<div class ='employee-content1'>
	<div class='wrapper'>
		<!-- <div class ='employee-content1'> -->
				
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
				<a href="hostel.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				
				<center><h2><font color="midnightblue" ><b>List of Students</b></font></h2></center>
			
				
				<form action="Delete_Student" method="post">
				<%
					Vector<Object> row=null;
						Vector<Vector<Object>> data=null;
						Iterator<Vector<Object>> itr_row = null;
						Iterator<Object>       itr_col=null;
						ResultSet resultset=null;
						BeanClass bean = new BeanClass();
						
						HostelFormActionBean action = new HostelFormActionBean(bean);
						resultset = action.getRollno();
						data = action.listStudent();
						
						 itr_row  =   data.iterator(); 
						    if(data.size()>0)
					{
				%>
		
							<table align="center"  border=1  class='table'>
								
									<tr>	<th align="center">Delete</th>
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
				 									while(itr_row.hasNext() && resultset.next())
				 									{
				 									
				 										 row  =     itr_row.next();
				 										itr_col =row.iterator();	
				 										
				 										
				
				 			%>
				 						<tr><td align="center"><input type="checkbox" name= "delete" value="<%=resultset.getString(5)%>"></td>
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
				 					<tr><td colspan="12" align= "center"><input type="submit" value="Delete Selected"></td></tr>
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
	
	
<div class='footer11'>
	<jsp:include page="view_updates_visitors.jsp"></jsp:include>
</div>
	
</body>
</html>