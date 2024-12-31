<%@page import="java.sql.*"%>
<%@include file="dbcon.jsp" %>



<% 


String s1,s2;
s1=request.getParameter("username");
s2=request.getParameter("password");



try
{
ResultSet rs=stmt.executeQuery("select * from user1 where username='"+s1+"' ");
if(!rs.next())
{
out.println("<b>user name not found</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=index.html style=text-decoration:none;color:red> Try Again!!!</h2></a>");

}
else
{
	  String pwd=rs.getString(2);
	  if(s2.equals(pwd))
	  {
  session.setAttribute("username",s1);
		
    String type=rs.getString(3);
			
			if(type.equals("owner"))
			{
			%>
			<jsp:forward page = "owner_home.jsp" />
			<%
			}
			if(type.equals("customer"))
			{
			%>
			<jsp:forward page="customer_home.jsp"/>
			<%
			}
if(type.equals("worker"))
			{
			%>
			<jsp:forward page="worker_home.html"/>
			<%
			}

			
			
		}

	else
	{
		out.println("<b>invalid password..</b>" +" "+ "<br>" +"<br>"+ "<h2><a  href=index.html style=text-decoration:none;color:red> Try Again!!!</h2></a>");
	}
}
}
catch(Exception e)
{
	  out.println(e);
}

%>