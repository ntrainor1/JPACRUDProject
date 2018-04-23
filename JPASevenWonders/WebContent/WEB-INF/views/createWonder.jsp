<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Create Wonder</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/myStyleSheet.css" type="text/css">

</head>
<body>
	<h1>Create your own wonder!</h1>

	<hr>
	
	<form action="addInfo.do" method="POST">
		<%-- Fields to construct Wonder entity --%>
		<table>
		<tr>
		<td><label for="name">Name</label></td>
		<td><input type="text" name="name" required></td>
		</tr>
		
		<tr>
		<td><label for="description">Description</label></td>
		<td><input type="text" name="description" required></td>
		</tr>
		
		<tr>
		<td><label for="constructionDate">Year of Construction</label></td>
		<td><input type="number" placeholder="0" min="0" max="5000" name="constructionDate" required>
		<select name="era">
			<option value="BC">BC</option>
			<option value="AD">AD</option>
		</select></td>
		</tr>
		
		<tr>
		<td><label for="latitude">Latitude</label></td>
		<td><input type="number" placeholder="0" step="0.000001" min="-180.000000" max="180.000000" name="latitude" required></td>
		</tr>
		
		<tr>
		<td><label for="longitude">Longitude</label></td>
		<td><input type="number" placeholder="0" step="0.000001" min="-180.000000" max="180.000000" name="longitude" required></td>
		</tr>

		<tr>
		<td><label for="wikiUrl">Wikipedia Link</label></td>
		<td><input type="text" name="wikiUrl" required></td>
		</tr>
		
		<tr>
		<td><label for="picUrl">Picture Link</label></td>
		<td><input type="text" name="picUrl" required></td>
		</tr>
		</table>
		
		<input type="submit" value="Create Wonder">
	</form>

	<hr>

	<a href="index.do">Return Home</a>
</body>
</html>