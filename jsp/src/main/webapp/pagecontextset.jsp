<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>page context set</title>
</head>
<body>
<%
  String name=request.getParameter("uname");
  out.println("welcome:"+name);
  
  pageContext.setAttribute("user",name,pageContext.SESSION_SCOPE);
  
%>
<a href="pagecontextget.jsp">Go to next page</a>
</body>
</html>