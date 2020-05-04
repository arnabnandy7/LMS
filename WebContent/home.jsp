<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="com.model.BS.BookBS"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Entity.Book"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body style="background-image:url('bgk.jpg');">
<table><tr><td><a href='insert.jsp'><img src="add.png" alt="add" width="30" height="30"></a><a href='index.jsp' style="float :right"><img src="logout.png" width="30" height="30"></a></tr></table>

<br><br>
<form action="delete">
<center>
<table>
<%
	
	BookBS bs=new BookBS();
	ArrayList<Book> al=new ArrayList<Book>();
	al=bs.ShowAllBook();
	for(Book b:al)
	{

%>

<tr>
<td><%=b.getBook_id() %></td>
<td><%=b.getBook_name() %></td>
<td><%=b.getAuthor_name() %></td>
<td><a href="delete?id=<%=b.getBook_id() %>"><img src="delete.png" width="12" height="12"></a></td>
<td><a href="edit.jsp?id=<%=b.getBook_id() %>"><img src="edit.png" width="12" height="12"></a></td>
</tr>

<%	} %>
</table>
</center>
</form>


</body>
</html>