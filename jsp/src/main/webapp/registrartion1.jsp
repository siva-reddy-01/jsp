<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP CRUD</title>
</head>
<body>
<%
String fname=request.getParameter("fname");
String gender=request.getParameter("gender");
String uname=request.getParameter("uname");
String email=request.getParameter("email");
String pwd=request.getParameter("pwd");
String mobileno=request.getParameter("mobileno");
String address=request.getParameter("address");
int id=(int)(Math.random()+99999)+1;

 try
{
	 Connection con=null;
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 System.out.println("Driver class Loaded");
	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
	 System.out.println("Connection established");
	 
	 String qry="insert into user_table values(?,?,?,?,?,?,?,?)";
	 PreparedStatement pstmt=con.prepareStatement(qry);
	 pstmt.setInt(1,id);
	 pstmt.setString(2,fname);
	 pstmt.setString(3,gender);
	 pstmt.setString(4,uname);
	 pstmt.setString(5,email);
	 pstmt.setString(6,pwd);
	 pstmt.setString(7,mobileno);
	 pstmt.setString(8,address);
	 
	int n= pstmt.executeUpdate();
	
	
	if(n>0)
	{
		%>
		<h3 align="center">Registration sucuessfull</h3><br>
		<a href="userlogin.html">Login</a>
	    <%
	
	}
	else
	{
		%>
		<h3 align="center">Registration failed!!</h3><br>
		<a href="registration.html">Try Register Again</a>
		<%
	}
}
catch(Exception e)
{
	System.out.println(e);
}

%>
</body>
</html>