<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Wonders of the World</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/myStyleSheet.css" type="text/css">

</head>
<body>
	<h1>Welcome to Wonders of the World!</h1>
	<h4>Click below to learn more about these wonders!</h4>
	
	<hr>
	
	<c:forEach var="w" items="${wonderList}">
		<h3><a href="show.do?wid=${w.id }" id="wonderLink">${w.name}</a></h3>
		<br>
	</c:forEach>
	
	<form action="layout.do" method="GET">
		<input type="submit" value="Create Your Own Wonder">
	</form>
</body>
</html>