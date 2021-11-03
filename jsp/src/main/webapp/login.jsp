<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
</head>
<body>
<jsp:forward page="scriplet.jsp"/>
<%
   String uname=request.getParameter("uname");
   String pwd=request.getParameter("pwd");
   try
   {
   Class.forName("com.mysql.cj.jdbc.Driver");
   out.println("Driver class loaded\n");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jfsd","root","root");
   out.println("connection established\n");
    String qry="insert into log values(?,?)";
    PreparedStatement pstmt=con.prepareStatement(qry);
    pstmt.setString(1,uname);
    pstmt.setString(2,pwd);
    pstmt.executeUpdate();
    out.println("login successfully\n");
   }
   catch(Exception e)
   {
	   out.println(e);
   }
%>
</body>
</html>