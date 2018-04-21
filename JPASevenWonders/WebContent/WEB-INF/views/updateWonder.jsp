<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Wonder</title>
</head>
<body>
	<h1>Here's where you update a wonder</h1>

	<hr>
	
	<form action="updating.do" method="POST">
		<%-- Fields to construct Wonder entity --%>
		<label for="name">Name</label>
		<input type="text" name="name"> <br>
		
		<label for="description">Description</label>
		<input type="text" name="description"> <br>
		
		<label for="constructionDate">Year of Construction</label>
		<input type="number" name="constructionDate">
		<select name="era">
			<option value="BC">BC</option>
			<option value="AD">AD</option>
		</select> <br>
		
		<label for="latitude">Latitude</label>
		<input type="number" step="0.000001" name="latitude"> <br>
		
		<label for="longitude">Longitude</label>
		<input type="number" step="0.000001" name="longitude"> <br>

		<label for="wikiUrl">Wikipedia Link</label>
		<input type="text" name="wikiUrl"> <br>
		
		<label for="picUrl">Picture Link</label>
		<input type="text" name="picUrl"> <br>
		
		<input type="hidden" name="wid" value="${wid }">
		
		<input type="submit" value="Update Wonder">
	</form>

	<hr>

	<a href="index.do">Return Home</a>
</body>
</html>