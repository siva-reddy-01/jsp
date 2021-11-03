package com.klef;
import java.sql.*;
public class Employee
{
	private int eid;
	private String ename;
	private String edesign;
	private int esalary;
	
	public int geteid()
	{
		return eid;
	}
	public void seteid(int eid)
	{
		this.eid=eid;
	}
	public String getename()
	{
		return ename;
	}
	public void setename(String ename)
	{
		this.ename=ename;
	}
	
	public String getedesign()
	{
		return edesign;
	}
	public void setedesign(String edesign)
	{
		this.edesign=edesign;
	}
	
	public int getesalary()
	{
		return esalary;
	}
	public void setesalary(int esalary) 
	{
		this.esalary=esalary;
	}
	
	public void setstore(String x)throws Exception
	{
		try
		{
		  Connection con=null;
		  Class.forName("com.mysql.cj.jdbc.Driver");
		  System.out.println("Driver class loaded");
		  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jfsd","root","root");
		  System.out.println("Connection established");
		  String qry="insert into employee values(?,?,?,?)";
		  PreparedStatement pstmt=con.prepareStatement(qry);
		  pstmt.setInt(1,eid);
		  pstmt.setString(2, ename);
		  pstmt.setString(3,edesign);
		  pstmt.setInt(4,esalary);
		  pstmt.executeUpdate();
		  
		   
		  
		  
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
	

}
