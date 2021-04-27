<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section>
<jsp:include page="menu.jsp"/>
<form action="SearchPrint.jsp">
<h2>Search According to Criteria</h2><hr>

<br/><br/>
<input type="radio" name="searchtype" value="id" > <font color="white">By Book Id </font><br/>
<input type="radio" name="searchtype" value="dept" ><font color="white"> By Department <br/></font>
<input type="radio" name="searchtype" value="bookname" > <font color="white">By Book Name <br/></font>
<input type="radio" name="searchtype" value="authorname" > <font color="white">By Author Name <br/></font>
<input type="radio" name="searchtype" value="all" > <font color="white">All Books <br/></font>
<br/>
<font color="white">Insert Search Value: </font><input type='text' name='searchvalue' size='10'>
<br/><br/> 
<input type='submit' value='Search'>
</form>
</section>
</body>
</html>