<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>page context get</title>
</head>
<body>
<%
  String name=(String)pageContext.getAttribute("user",pageContext.SESSION_SCOPE);
  out.println("welcome"+name);

%>
</body>
</html>