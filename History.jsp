<%@page import="com.training.java.library.ConnectionHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
<%
String user=(String)session.getAttribute("user");
Connection con = ConnectionHelper.getConnection();
String sql = " SELECT * FROM TransReturn WHERE Username = ?"; 			
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1,user);			
ResultSet rs = ps.executeQuery();
%>
<h2>Taken Books Until Now</h2><hr>
<table border='3'>
<tr>
<th>Book ID</th>
<th>From Date</th>
<th>To Date</th></tr>
<% 
while(rs.next()){%>
	<tr><td>
	<%=rs.getString("BookID")%>  </td>
	<td><%=rs.getString("FromDate")%></td> 
	<td><%=rs.getString("ToDate")%></td></tr>
<%}%>
</table>
</body>
</html>