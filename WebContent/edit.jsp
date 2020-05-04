<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.BS.BookBS"%>
<%@page import="com.model.Entity.Book"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image:url('bgk.jpg');">
<center>
<form action="update">
<table>
	
<%
	int key=Integer.parseInt(request.getParameter("id"));
	BookBS bs=new BookBS();
	ArrayList<Book> al=new ArrayList<Book>();
	al=bs.ShowAllBook();
	for(Book b:al)
	{
		if(b.getBook_id()==key)
		{
			
%>
<tr><td>Book ID :</td><td><input type="text" name="bid" value="<%=b.getBook_id() %>" required></td></tr>
	<tr><td>Book Name :</td><td><input type="text" name="bnm" value="<%=b.getBook_name() %>" required></td></tr>
	<tr><td>Author Name :</td><td><input type="text" name="anm" value="<%=b.getAuthor_name() %>" required></td></tr>
	<tr><td></td><td style="float: right"><input type="submit" value="Submit"></td></tr>
</table>


<%		}
	} 
%>
</form>
</center>
</body>

</html>