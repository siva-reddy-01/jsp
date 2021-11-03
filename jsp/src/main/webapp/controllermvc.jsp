<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MVC JSP</title>
</head>
<body>
 <jsp:useBean  id="e" class="com.klef.Employee"></jsp:useBean>
 <jsp:setProperty property="eid" name="e"/>
 <jsp:setProperty property="ename" name="e"/>
 <jsp:setProperty property="edesign" name="e"/>
 <jsp:setProperty property="esalary" name="e"/>
 <jsp:setPropery property="store" name="e" value="r"/>

 
</body>
</html>