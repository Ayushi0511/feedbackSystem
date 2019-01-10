<%-- 
    Document   : adminlogin
    Created on : Oct 29, 2017, 7:26:04 PM
    Author     : 4ser
--%>

<%@page import="java.sql.*"%>
	<%@page import="java.lang.*"%>
	<html>
	<head>
            <style>
                
#faculty {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#faculty td, #faculty th {
    border: 1px solid #ddd;
    padding: 8px;
}

#faculty tr:nth-child(even){background-color: #f2f2f2;}

#faculty tr:hover {background-color: #ddd;}

#faculty th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
            </style></head>
        <body>
</body>
<form method="post" action="index.html">
    <h2> FEEDBACK FOR FACULTY 1</h2>
    <table id="faculty">
  <tr>
    <th>Overall Rating</th>
    <th>Explaining Rating</th>
    <th>P Rating</th>
    <th>Conducting Rating </th>
    <th>Suggestion</th>
  </tr>
  
   <%
	Connection con;
	ResultSet rs;
	Statement st;
        try
        {
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/faculty","root","root");
	
        String faculty ="faculty1";

st=con.createStatement();
 rs=st.executeQuery("select * from feedback where faculty='"+faculty+"'");
 while(rs.next())
{

%>
<tr><td><%=rs.getString("overall_rating")%></td>
    <td><%=rs.getString("explaining_rating")%></td>
    <td><%=rs.getString("p_rating")%></td>
    <td><%=rs.getString("conducting_rating")%></td>
    <td><%=rs.getString("suggestions")%></td>
</tr>

<%

}
%>
    </table>
    <%
    
   }
catch(Exception e)
{

    }




%>
 <h2> FEEDBACK FOR FACULTY 2</h2>
    <table id="faculty">
  <tr>
    <th>Overall Rating</th>
    <th>Explaining Rating</th>
    <th>P Rating</th>
    <th>Conducting Rating </th>
    <th>Suggestion</th>
  </tr>
  
   <% Connection conn;
	ResultSet r;
	Statement stm;
	
        try
        {
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/faculty","root","root");
	
        String faculty ="faculty2";

stm=conn.createStatement();
 r=stm.executeQuery("select * from feedback where faculty='"+faculty+"'");
 while(r.next())
{

%>
<tr><td><%=r.getString("overall_rating")%></td>
    <td><%=r.getString("explaining_rating")%></td>
    <td><%=r.getString("p_rating")%></td>
    <td><%=r.getString("conducting_rating")%></td>
    <td><%=r.getString("suggestions")%></td>
</tr>
<%

}
%>
    </table>
    <%
    
   }
catch(Exception e)
{

    }




%>
 <h2> FEEDBACK FOR FACULTY 3</h2>
    <table id="faculty">
  <tr>
    <th>Overall Rating</th>
    <th>Explaining Rating</th>
    <th>P Rating</th>
    <th>Conducting Rating </th>
    <th>Suggestion</th>
  </tr>
  
   <%Connection connn;
	ResultSet result;
	Statement stmnt;
	
        try
        {
	Class.forName("com.mysql.jdbc.Driver");
	connn=DriverManager.getConnection("jdbc:mysql://localhost:3306/faculty","root","root");
	
        String faculty ="faculty3";

stmnt=connn.createStatement();
 result=stmnt.executeQuery("select * from feedback where faculty='"+faculty+"'");
 while(result.next())
{

%>
<tr><td><%=result.getString("overall_rating")%></td>
    <td><%=result.getString("explaining_rating")%></td>
    <td><%=result.getString("p_rating")%></td>
    <td><%=result.getString("conducting_rating")%></td>
    <td><%=result.getString("suggestions")%></td>
</tr>


<%

}
%>
    </table>
    <%
    
   }
catch(Exception e)
{

    }




%>
<br>
<input type="submit" value="LOGOUT">
</form>
</html> 


