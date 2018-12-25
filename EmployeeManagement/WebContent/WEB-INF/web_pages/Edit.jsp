<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body
{
background-color: gray;
}
.table3
{
background-color: white;
width: 1400px;
height: 50px;
margin-left: -10px;
margin-top: -10px;
}
fieldset
{
margin-left: 400px;
margin-right: 400px;
margin-top:150px;
margin-bottom: 170px;

}
</style>
<title>Edit Details</title>
</head>
<body>
<form action="Edit">
<table class="table3"><tr><td><font size="4" color="blue"><center><b>Edit Employee Details</b></center></font></td></tr></table>
<fieldset>
<legend>Details</legend>
<pre>
		Employee ID     <input type="text" name="empid"/>
		Employee Name   <input type="text" name="empname"/>
		Department      <input type="text" name="dept"/>
		Designation     <input type="text" name="desg"/>
		Salary          <input type="text" name="sal"/>
		Mobile          <input type="text" name="mob"/>
				        <input type="submit" value="Save"/>
				 <a href="goto">Go to main page</a>
</pre>				 
</fieldset>
</form>
<table class="table3"><tr><td><font size="4" color="blue"><center><b>Edit Employee Details</b></center></font></td></tr></table>

</body>
</html>