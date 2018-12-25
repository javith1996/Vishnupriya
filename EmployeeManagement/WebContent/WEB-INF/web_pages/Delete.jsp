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
.table1
{
background-color: blue;
width: 520px;
height: 20px;
margin-left: -10px;
margin-top: -10px;
}
fieldset
{
margin-left: 100px;
margin-right: 160px;
margin-bottom: 10px;
}
</style>
<title>Delete</title>
</head>
<body>
<form action="Delete">
<table class="table1"><tr><td><font size="6" color="white"><b>DELETE EMPLOYEE</b></font></td></tr></table>
Employee id <input type="text" name="empid"/>
            <input type="submit" value="Delete"/>
            <a href="goto">Go to main page</a>
            
            
</form>
</body>
</html>