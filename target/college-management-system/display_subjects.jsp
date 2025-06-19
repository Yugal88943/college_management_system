<%@page import="com.actionbeans.student.StudentShowSubjectsActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Subjects</title>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>
<div class ='employee-content1'>
	<div class='wrapper'>	
	<jsp:include page="studentMenu.jsp"></jsp:include>	
		<%
				int i=0;
								Vector<Vector<Object>>  data=null;
									Vector<Object>    row   = null;
									Iterator<Vector<Object>> itr_row = null;
									Iterator<Object>       itr_col=null;
									
									    	BeanClass bean = new BeanClass();
									    	StudentShowSubjectsActionBean action = new StudentShowSubjectsActionBean(bean);
									    	
									Long reg_no = Long.parseLong(session.getAttribute("username").toString());
									bean.setReg_no(reg_no);
								    data = action.ShowSubjects();

								    itr_row  =   data.iterator(); 
									
								    if(data.size()>0)
									{
			%>
				<a href="studentHome.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				<center><h2><font color="crimson" ><b>List of Subjects</b></font></h2></center>
			
				<table align="center"  border=1 class='table'>
			
				<tr>
				<th align="center">S.no</th>
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
								while(itr_row.hasNext())
								{
									i++;
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
							<h3 align=center>Record not exist.</h3>		
		<%				
				}		
						
		%>
</div>
</div>
<div class='footer11'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>	
</body>
</html>