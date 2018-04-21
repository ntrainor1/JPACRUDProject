<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${wonder.name}</title>
</head>
<body>
	<a href="${url.wikiUrl }"><h1>${wonder.name}</h1></a>
	<h5>${wonder.description}</h5>
	<h5>${wonder.constructionDate}${wonder.era}</h5>

	<hr>

	<form action="update.do" method="POST">
		<input type="submit" value="Update Wonder">
		<input type="hidden" name="wid" value="${wonder.id }">
	</form>

	<form action="delete.do" method="POST">
		<input type="submit" value="Delete Wonder">
		<input type="hidden" name="wid" value="${wonder.id }">
	</form>

	<hr>

	<a href="index.do">Return Home</a>
</body>
</html>