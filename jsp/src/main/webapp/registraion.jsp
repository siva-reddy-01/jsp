<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration page</title>
</head>
<body>
<%
   String fname=request.getParameter("fname");
   String lname=request.getParameter("lname");
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd");
   String mno=request.getParameter("mno");
   try
   {
	   Class.forName("com.mysql.cj.jdbc.Driver");
	   System.out.println("driver class loaded");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jfsd","root","root");
	   System.out.println("connection established");
	   String qry="insert into reg values(?,?,?,?,?)";
	   PreparedStatement pstmt=con.prepareStatement(qry);
	   pstmt.setString(1,fname);
	   pstmt.setString(2,lname);
	   pstmt.setString(3,uname);
	   pstmt.setString(4,pwd);
	   pstmt.setString(5,mno);
	   pstmt.executeUpdate(); 
	   out.println("register sucuessfully");
   }
   catch(Exception e)
   {
	   out.println(e);
   }
%>
</body>
</html>