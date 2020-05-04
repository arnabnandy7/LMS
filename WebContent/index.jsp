<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
</head>
<body style="background-image:url('bgk.jpg');">
	<center>
	<form action="Controller" method="post">
		<table>
		<tr>
			<td>Username</td>
			<td><input type="text" name="uname" required></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="pass" required></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Log In"></td>
		</tr>
		</table>
	</form>
	</center>
</body>
</html>