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
width: 100px;
height: 20px;
margin-left: -10px;
margin-top: -10px;
}
fieldset
{
width: 400px;
height: 300px;
margin-left: 100px;
margin-right: 50px;
margin-bottom: -200px;
}
</style>
<title>LOGIN</title>
</head>
<body>
<form action="login">
<table class="table1"><tr><td><font size="8" color="white"><b>LOGIN</b></font></td></tr></table>
<fieldset>
<legend>Sign Up</legend>
<pre>
		<center>User Name<input type="text" name="userid"/></center>
		<center>Password <input type="password" name="password"/></center>
		<center><input type="submit" value="Sign In"/></center>
</pre>				 
</fieldset>
</form>
</body>
</html>