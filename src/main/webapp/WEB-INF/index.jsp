<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading Books</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>

<div class='container'>
<h1>All Books</h1>
<div class='container'>

<table class="table table-dark table-striped">
	<tr>
	 <th scope="col">ID</th>
      <th scope="col">Title</th>
       <th scope="col">Language</th>
        <th scope="col"># Pages</th>
      <tbody>
      
        <c:forEach var="book" items="${books}">
        <tr>
        <td><c:out value="${book.id}"></c:out></td>
        <td><a href="/books/${book.id}"><c:out value="${book.title}"></c:out></a></td>
        <td><c:out value="${book.language}"></c:out></td>
        <td><c:out value="${book.numberOfPages}"></c:out></td>
        
    </c:forEach>

</tbody>
</table>

</div>


</div>

</body>
</html>