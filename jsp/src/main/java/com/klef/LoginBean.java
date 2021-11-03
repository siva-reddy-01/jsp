package com.klef;

public class LoginBean
{
   private String name;
   private String password;
   
   public void setname(String name)
   {
	   this.name=name;
   }
   
   public String getname()
   {
	   return name;
   }
   
   public void setpassword(String password) 
   {
	   this.password=password;
   }
   
   public boolean validate()
   {
	   if(password.equals("admin"))
	   {
		   return true;
	   }
	   else
	   {
		   return false;
	   }
   }
   
   
   
}
