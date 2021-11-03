package com.klef;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





@SuppressWarnings("serial")
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet 
{
	@SuppressWarnings("unused")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
	    response.setContentType("text/html");
	    PrintWriter out=response.getWriter();
	    
	    String name=request.getParameter("name");
	    String password=request.getParameter("password");
	    
	    LoginBean bean=new LoginBean();  
	    bean.setname(name);
	    bean.setpassword(password);
	    request.setAttribute("bean",bean);
	    
	    boolean status=bean.validate();
	    
	    if(status)
	    {
	    	RequestDispatcher rd=request.getRequestDispatcher("login-success.jsp");
	    	rd.forward(request,response);		
	    }
	    else
	    {
	    	RequestDispatcher rd=request.getRequestDispatcher("login-error.jsp");
	    	rd.forward(request, response);
	    }
	    
		
	}
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doPost(request,response);
	}

}
