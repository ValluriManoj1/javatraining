<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Account Page</title>
</head>
<body>
<center>
<div class="lab1">
<%
	String user=(String)session.getAttribute("user");
	out.println("<b>"+"Hello!!! "+user+"<br/> "+"Welcome to your Library Account"+"<br/><br/>"+"</b>");
%>
</div>
<div class="lab">
<a href="AccountDetails.jsp">AccountDetails</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Search.jsp">Search/Issue</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="Return.jsp">Return</a>&nbsp;&nbsp;&nbsp;&nbsp;
<a href="History.jsp">History</a><br/><br/>
</div>
<p style="position: absolute;top: 10px;right: 10px;"><a href="logout.jsp">Logout</a></p>
</center>
</body>
</html>