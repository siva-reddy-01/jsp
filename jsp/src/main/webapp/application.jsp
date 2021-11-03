<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Application page</title>
</head>
<body>
<%
 out.println("welcome:"+request.getParameter("uname"));
 String driver=application.getInitParameter("uname");
 out.println("driver name is:"+driver);
%>
</body>
</html>