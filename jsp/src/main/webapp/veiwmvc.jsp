<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MVC JSP</title>
</head>
<body>
<jsp:useBean id="e"  class=com.klef.Employee></jsp:useBean>
<jsp:getProperty property="eid" name="e"/>
<jsp:getProperty property="ename" name="e"/>
<jsp:getProperty property="edesign" name="e"/>
<jsp:getProperty property="esalary" name="e"/>

</body>
</html>