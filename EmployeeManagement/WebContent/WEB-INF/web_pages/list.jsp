<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,com.app.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<table class="table1"><tr><td><font size="8" color="blue"><b>EMPLOYEE DETAILS</b></font></td></tr></table>
   <table border=1 width="90%" align="center">
   <tr>
   	<td>ID</td>
   	<td>Name</td>
   	<td>Department</td>
   	<td>Designation</td>
   	<td>Salary</td>
   	<td>Mobile</td>
   </tr>
   <%
   		List <Employee> empl=(List<Employee>)request.getAttribute("list"); 
   
        for(Employee e:empl){ %>
        	<tr>
        		<td><%=e.getEmp_id() %></td>
        		<td><%=e.getEmp_name() %></td>
        		<td><%=e.getDepartment() %></td>
        		<td><%=e.getDesignation() %></td>
        		<td><%=e.getSalary() %></td>
        		<td><%=e.getMobile() %></td>
        	</tr>
        	
        <%}
   
   
   %>
   </table>
</body>
</html>