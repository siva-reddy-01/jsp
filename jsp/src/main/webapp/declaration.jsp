<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jsp File</title>
</head>
<body>
<%!
int cube(int num) 
{
	return num*num*num;
}
%>
<%= "Cube of 3 is:"+cube(3) %>
</body>
</html>