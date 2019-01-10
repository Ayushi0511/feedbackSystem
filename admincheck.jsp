<%-- 
    Document   : admincheck
    Created on : Oct 29, 2017, 8:06:47 PM
    Author     : 4ser
--%>

<%@page import="java.sql.*"%>
	<%@page import="java.lang.*"%>
	<html>
	<head>
</head>
<%
	Connection con;
	ResultSet rs;
	Statement st;
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	//out.println("<font color='red'>"+name+" "+pass);
	session.setAttribute("uname",username);
	st=con.createStatement();
	rs=st.executeQuery("SELECT * FROM validation where userid='"+username+"' and password='"+password+"'");
        
	if(rs.next())
	{out.print("<p> matched </p>");
	response.sendRedirect("adminlogin.jsp");
	}
	else
	
{
   
	response.sendRedirect("Adminlogin.html");
	}
	}
	catch(Exception e1)
	{	
	}
	%>
	</html>