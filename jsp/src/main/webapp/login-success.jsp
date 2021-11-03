<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.klef.LoginBean"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>you are login sucuessfully!</p>
<%  
LoginBean bean=(LoginBean)request.getAttribute("bean");
out.println("Welcome:"+bean.getname());
%>
</body>
</html>