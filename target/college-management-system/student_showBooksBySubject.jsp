<%@page import="com.actionbeans.student.StudentShowBooksActionBean"%>
<%@page import="com.beans.BeanClass"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Show Books BY Subject</title>
</head>
<body>

<jsp:include page="student_showBooks.jsp"></jsp:include><br><br>

<div class='employee-content1'>		
<div class='wrapper'>
<%
	int i=0;

Iterator<Object> itr=null;
ArrayList<Object> list = null;

	BeanClass bean = new BeanClass();
	bean.setReg_no(Long.parseLong(session.getAttribute("username").toString()));
	bean.setSub_code(request.getParameter("sub_code").toString());
	
	StudentShowBooksActionBean action = new StudentShowBooksActionBean(bean);
	
	list = action.BooksBySubject();
	
	 itr  =   list.iterator(); 
		
	    if(list.size()>0)
		{
	   
%>	<center><h2><font color="crimson" ><b>List of Books By Subject</b></font></h2></center>
		
		
				<table align="center"  border=1 class='table' width="1200">
					<tr>	<th align="center">S.no</th>
					<th align="center">Subject Code</th>
								<th align="center">Subject Name</th>
								<th align="center">Book</th>
								<th align="center">Author</th>
								<th align="center">Course</th>
								<th align="center">Semester</th>
										
				</tr>
				<%
				while(itr.hasNext())
				{
					i++;
%>
						<tr><td><%=i %></td>
						<td><%=itr.next() %></td>
						<td><%=itr.next() %></td>
						<td><%=itr.next() %></td>
						<td><%=itr.next() %></td>
						<td><%=itr.next() %></td>
						<td><%=itr.next() %></td>
						<%
						String path = itr.next().toString();
								
					}
					

%>
	</tr>
<%
				}

				
%>
					</table>
				
</div>
</div>
<div class='footer11'>
		<jsp:include page="view_updates_visitors.jsp"></jsp:include>
	</div>
</body>
</html>