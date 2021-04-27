<%@page import="com.training.java.library.ConnectionHelper"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="menu.jsp"/>
	<br/>
	<%
	String sql = null;	
	String searchtype = request.getParameter("searchtype");		
	String searchvalue = request.getParameter("searchvalue");
	Connection con = ConnectionHelper.getConnection();
	if(searchtype.equals("id")) sql = " SELECT * FROM Books WHERE Id = ? " ;
	else if(searchtype.equals("bookname")) sql = " SELECT * FROM Books WHERE Name = ? " ;
	else if(searchtype.equals("authorname")) sql = " SELECT * FROM Books WHERE Author = ? " ;
	else if(searchtype.equals("dept")) sql = " SELECT * FROM Books WHERE Dept = ? " ;
	else sql = " SELECT * FROM Books Where 1=?" ;
	PreparedStatement ps =con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
	ps.setString(1,searchvalue);						
	ResultSet rs = ps.executeQuery();
	if(rs.next())
	{%>
		<h2><% out.write("<br/>Select Books To Issue : <br/>");%></h2><hr>
		<%rs.previous();	
		%>
	<form action="Issue.jsp"><table>
	<tr>
	<td>Book Id</td>
	<td>Book Name</td>
	<td>Author</td>
	<td>Edition</td>
	<td>Department</td>
	<td>TotalBooks</td>
	<td>Select</td>
	</tr>			
	<% 
	while(rs.next()) 
	{					
		
	%>	<tr>
		<td><%=rs.getInt("Id") %></td>
		<td><%=rs.getString("Name") %></td>
		<td><%=rs.getString("Author") %></td>
		<td><%= rs.getString("Edition") %></td>
		<td><%=rs.getString("Dept") %></td>
		<td><%=rs.getString("TotalBooks") %></td>
		<%	
		if(Integer.parseInt(rs.getString("TotalBooks")) > 0){%>
			<td><input type="checkbox" name="bookid" value="<%=rs.getInt("Id") %>"></td></tr>		
	<% 	
	}else{
	%>
			<td><input type="checkbox" name="bookid" disabled="true" value="<%=rs.getInt("Id") %>"></td></tr>
	<%}} %>			
	</table><br/><input type="submit" value="Issue Books" style="margin-left: 50%"></form>			
	<% }	
					
	else 
	{%>
	<form action="Search.jsp">
	<h2>Sorry !... <br/> No book found for the Search Criteria</h2><br/><br/>
	<input type='submit' value='Return' style="margin-left: 50%"></form></body></html>
	<% }%>	
	
</body>
</html>