<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.database.Dao"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Updates Visitors</title>
</head>
<body>
	
			<%
			  				int i=0;
			  					Connection connection = Dao.getConnect();
			  					String selectQuery = "select * from updates";
			  					try{
			  						PreparedStatement prepare = connection.prepareStatement(selectQuery);
			  						ResultSet resultset= prepare.executeQuery();
			  				%>
			  				
			  			<marquee bgcolor="midnightblue" width="100%" direction="left" onmouseover="stop();" onmouseout="start();">
			  					
			  					
			  				<%	
			  					while(resultset.next())
			  					{
			  					i++;
			  				%>
			  				   
			  				<b> <font color="white" size=6>  <%= resultset.getString(1) %> - </font></b> - 
			  				 <b>  <font color="white" size=6> <%= resultset.getString(2) %></font></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  				   
			  				<%
			  			
			  					}
			  				%>    
							</marquee>		
										
			  				<%
			  					}
			  					catch(Exception e)
			  					{
			  						e.printStackTrace();
			  					}
			  				%>
	
</body>
</html>