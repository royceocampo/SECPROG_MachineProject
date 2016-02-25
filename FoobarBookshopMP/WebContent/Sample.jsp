<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TEST PAGE</title>
</head>
<body>
	Here is your profile <br> <br>
	<c:forEach var="u" items="${usersList}" varStatus="counter">
		User ${counter.index} : <br>
		${u.username} <br>
		
	console.log(u.username);
		${u.firstname} <br>
		${u.lastname} <br>
		${u.gender} <br>
		${u.email} <br>
		${u.password} <br>
		${u.college} <br>
		${u.idnum} <br>
		${u.rating} <br>
		<button id="${u.id}">Eat Pizza!</button> <br> <br>
	</c:forEach>
	
	
</body>
</html>