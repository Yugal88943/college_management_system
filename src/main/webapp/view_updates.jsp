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
<title>View Updates</title>
</head>
<body>

 			 <table width=250 height="270" align = "right" border=1> 
			  		   <tr> <th><font color="midnightblue">NEWS</font></th></tr>
			  				<%
			  				
			  				int i=0;
			  					Connection connection = Dao.getConnect();
			  					String selectQuery = "select * from updates";
			  					try{
			  						PreparedStatement prepare = connection.prepareStatement(selectQuery);
			  						ResultSet resultset= prepare.executeQuery();
			  				%>
			  				
			  					<tr><td><marquee direction="up" height="270" onmouseover="stop();" onmouseout="start(); ">
			  					<table>
			  					
			  				<%	
			  					while(resultset.next())
			  					{i++;
			  				%>
			  				    <tr><td>
			  				  <%=i %>. &nbsp;  <%= resultset.getString(1) %><br>
			  				    <hr width = 200 color="crimson" > 
			  				    <%= resultset.getString(2) %><br><br><br>
			  				    </td></tr>
			  				<%
			  					}
			  				%>    
								</table></marquee>		
								</td></tr>  				
			  				<%
			  					}
			  					catch(Exception e)
			  					{
			  						e.printStackTrace();
			  					}
			  				%>
			  
			  </table>


</body>
</html>