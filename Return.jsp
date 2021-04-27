<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.training.java.library.ConnectionHelper"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<%
String user=(String)session.getAttribute("user");
String sql = null;
Connection con = ConnectionHelper.getConnection();
sql = " SELECT * FROM TranBook WHERE Username = ? " ;			
PreparedStatement ps = con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
ps.setString(1,user);						
ResultSet rs = ps.executeQuery();
int i = 0;
									
if(rs.next())
{%>
	<h2><% out.write("<br/><br/>Select which book you want to return :");%></h2><hr>
	<% rs.previous();	
%>
<form action='ReturnNext.jsp'><table border='3'>
<tr>
<td>BookId</td>
<td>From Date</td>
<td>Select</td>
</tr>			
<% 
while(rs.next()) 
{					
	
%>					
	<td><%=rs.getInt("BookId") %></td><td><%=rs.getDate("Fromdate")%></td>
	<td><input type='checkbox' name='bookid' value="<%=rs.getInt("BookId") %>"></td></tr><% 		
	i++;
}	
%>
</table><br/><input type='submit' value='Return Books' style="margin-left: 45%" /></form>			
<%	
}	
				
if(i == 0)
{
	out.write("<br/><br/>No more book is available to return .");
}	
%>
</body>
</html>