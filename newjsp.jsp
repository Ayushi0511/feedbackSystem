<%-- 
    Document   : newjsp
    Created on : Oct 24, 2017, 7:22:07 PM
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
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","root");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	//out.println("<font color='red'>"+name+" "+pass);
	session.setAttribute("uname",username);
	st=con.createStatement();
	rs=st.executeQuery("SELECT * FROM tablestu where username='"+username+"' and password='"+password+"'");
        
	if(rs.next())
	{out.print("<p> matched </p>");
	response.sendRedirect("facultyfeedback.html");
	}
	else
	
{
   
	response.sendRedirect("index.html");
	}
	}
	catch(Exception e1)
	{	
	}
	%>
	</html>