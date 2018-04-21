<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Wonders of the World</title>
</head>
<body>
	<h1>Welcome to Wonders of the World!</h1>
	
	<br>
	
	<h5><a href="layout.do">Create Your Own Wonder</a></h5>
	
	<hr>
	
	<c:forEach var="w" items="${wonderList}">
		<h5><a href="show.do?wid=${w.id }">${w.name}</a></h5>
	</c:forEach>
</body>
</html>