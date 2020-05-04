<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert book</title>
</head>
<body style="background-image:url('bgk.jpg');">
<center>
<form action="insert" method="post">
<table>
	<tr><td>Book ID :</td><td><input type="text" name="bid" required></td></tr>
	<tr><td>Book Name :</td><td><input type="text" name="bnm" required></td></tr>
	<tr><td>Author Name :</td><td><input type="text" name="anm" required></td></tr>
	<tr><td></td><td style="float: right"><input type="submit" value="Submit"></td></tr>
</table>
</form>
</center>
</body>
</html>