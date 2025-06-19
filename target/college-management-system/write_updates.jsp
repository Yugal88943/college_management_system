<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Write News</title>
</head>
<body>
<jsp:include page="head_menu.jsp"></jsp:include>

<div class ='employee-content1'>
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
		<jsp:include page="view_updates.jsp"></jsp:include>
		
				<form action="Write_Updates" method="post">
	
				<table align = "center" class='table'>
						<tr><th colspan="2"><h2><font color="crimson"><b>Write News</b></font></h2></th></tr>
						<tr>
							<td colspan=2 align="center"><font color="red"><b><%=msg %></b></font></td>
					</tr>
						<tr><td class='label'><b>Date</b>     </td>
						<td> <input class='input' type = "text" name="event_date" value="" ></td></tr>
					<tr><td class='label'><b>News</b>    </td>
						<td> <input class='input' type = "text" name="news" value=""></td></tr>
					
					<tr><td align ="center" colspan="2"><input class='submit' type="reset" value="Reset"><input class='submit' type="submit" value="Submit">
					<a href="updates.jsp"><input class='submit' type="button" name="btn_back" value="BACK"/></a>
				</td>
				</tr>
			</table>
			</form>
	</div>
</div>

</body>
</html>