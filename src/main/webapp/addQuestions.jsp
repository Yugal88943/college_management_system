<%@page import="com.actionbeans.employee.EmployeeQuestionsActionBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.beans.BeanClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Questions</title>
<script type="text/javascript">
function valid()
{
	
	var subcode =document.myform.sub_code.value;
	if (subcode.match("select")) 
	{
         alert("Please select Subject Code");
         return false;
    }
	
	var examques =document.myform.exam_ques.value;
	var ans1 =document.myform.ans1.value;
	var ans2 =document.myform.ans2.value;
	var ans3 =document.myform.ans3.value;
	var ans4 =document.myform.ans4.value;
	var rightans =document.myform.right_ans.value;

	
	if(examques=="" || ans1=="" || ans2=="" || ans3=="" || ans4=="" || rightans=="")
		{
			alert("Please Fill All The Fields");
			return false;
		}

	
	  return true;
	    
}

</script>
</head>



<body>
<jsp:include page="questions.jsp"></jsp:include>
<div class='employee-content1'>		
<div class='wrapper'>
<%
	String msg = "";
		if(request.getAttribute("msg")!=null)
		{
	 msg = request.getAttribute("msg").toString();
		}
		else{
		msg = "";	
		}
		
		
		BeanClass bean = new BeanClass();
		EmployeeQuestionsActionBean action = new EmployeeQuestionsActionBean(bean);
		ResultSet resultSet= action.getSubCode();
%>
<form action="Add_Questions" method="post" name="myform" onsubmit="return valid()">
		
		<table align = "center" class='table'>
						<tr><th colspan="2"><h2><font color="crimson"><b>Add Question</b></font></h2></th></tr>
						<tr>
							<td colspan=2 align="center"><font color="green"><b><%=msg %></b></font></td>
					</tr>
					
					<tr><td class='label'><b>Subject Code  </b></td>
						<td> 
						<select name=sub_code>
								<option>-Select-</option>
								<%
								while(resultSet.next())
								{
								%>
						 <option value="<%=resultSet.getString(2) %>"><%=resultSet.getString(2)%> (<%=resultSet.getString(1)%>)</option>
							  <%  } %>

							   
					</select>	</td></tr>
					<tr><td><b>Question  </b></td>
						<td> <input class='input' type = "text" name="exam_ques" value=""></td></tr>
					<tr><td><b>Answer 1 </b></td>
						<td> <input class='input' type = "text" name="ans1" value=""></td></tr>
					<tr><td><b>Answer 2  </b></td>
						<td> <input class='input' type = "text" name="ans2" value=""></td></tr>
					<tr><td><b>Answer 3  </b></td>
						<td> <input class='input' type = "text" name="ans3" value=""></td></tr>
					<tr><td><b>Answer 4  </b></td>
						<td> <input class='input' type = "text" name="ans4" value=""></td></tr>
					<tr><td><b>Right Answer  </b></td>
						<td> <input class='input' type = "text" name="right_ans" value=""></td></tr>
					<tr><td colspan=2 align ="center"><input class='submit' type="submit" value="Submit">
			
				<input class='submit' type="reset" value= "Reset"></td></tr>
	
			</table>
</form>

</div>
</div>


<div class='hfooter'>
	<jsp:include page="view_updates_visitors.jsp"></jsp:include>
</div>
</body>
</html>