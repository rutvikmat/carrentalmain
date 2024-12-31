<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>

<% 
String s1,s2,s3,s4;

String flag="false";

s1=(String)session.getAttribute("username");


s2=request.getParameter("old-password");
s3=request.getParameter("new-password");
s4=request.getParameter("confirm-password");


try
{

ResultSet res=stmt.executeQuery("select * from user1 where username='"+s1+"' and password='"+s2+"' ");
        
       if(res.next())
        {
            int k=stmt.executeUpdate("update user1 set password='"+s3+"' where username='"+s1+"' ");
				out.println("<b>updated successfully</b>" +" "+ "<br>" +"<br>"+ "<h2><a   href=login.html style=text-decoration:none;color:red>Login Here!!!</h2></a>");
                                                                                                        
            
         } 
        else
      {
       out.println("<b>new password and confirm password must be same</b>" +" "+ "<br>" +"<br>"+ "<h2><a           href=changepassword.jsp style=text-decoration:none;color:red> Try Again!!!</h2></a>");
     }
        
        
      
	
}

catch(Exception e)
{

   out.println(e);
}

%>