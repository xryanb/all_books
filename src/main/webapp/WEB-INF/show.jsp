<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reading Book</title>

</head>
<body>
<h1>${book.title }</h1>
<p>Description: ${book.description}</p>
<p>Language: ${book.language}</p>
<p>Number of Pages: ${book.numberOfPages}</p>


</body>
</html>