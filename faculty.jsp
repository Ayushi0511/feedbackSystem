<%-- 
    Document   : faculty
    Created on : Oct 27, 2017, 12:20:55 AM
    Author     : 4ser
--%>

<%@page import="java.sql.*"%>
	<%@page import="java.lang.*"%>
	<html>
	<head>
        </head><body>
        <%
	Connection con;
	ResultSet rs;
	Statement st;
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/faculty","root","root");
	st=con.createStatement();	
	
	String faculty=request.getParameter("faculty");
	String overall_rating=request.getParameter("overall rating");
	String explaining_rating =request.getParameter("explaining rating");
        String p_rating =request.getParameter("p rating");
        String conducting_rating  =request.getParameter("conducting rating");
        String suggestions  =request.getParameter("ta1");
        
        
	
	String query2 ="INSERT INTO feedback (faculty,overall_rating,explaining_rating,p_rating,conducting_rating,suggestions) values('"+faculty+"','"+overall_rating+"','"+explaining_rating+"','"+p_rating+"','"+conducting_rating+"','"+suggestions+"')";
	st.executeUpdate(query2);
	out.print("<h1> Thankyou for your feedback!</h1> <br> <a href='facultyfeedback.html'>CLICK ON THIS TO COMPLETE YOUR FEEDBACK PROCESS AND LOGOUT</a>");
	
	%>
	</body>
	</html>