<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>${wonder.name}</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="CSS/myStyleSheet.css" type="text/css">

<style>
#map {
	height: 400px;
	width: 100%;
}
</style>
</head>
<body>
	<table>
		<tr>

			<form action="index.do" method="GET">
				<input type="submit" value="Return Home">
			</form>

			<form action="update.do" method="POST">
				<input type="submit" value="Update Wonder">
				<input type="hidden" name="wid" value="${wonder.id }">
			</form>

			<form action="delete.do" method="POST">
				<input type="submit" value="Delete Wonder"> <input
					type="hidden" name="wid" value="${wonder.id }">
			</form>

		</tr>
	</table>
	<hr>
	
	<img src="${wonder.picUrl} alt="A picture of ${wonder.name }">

	<a href="${url.wikiUrl }"><h1>${wonder.name}</h1></a>

	<hr>

	<h5>${wonder.description}</h5>
	<h5>${wonder.constructionDate}${wonder.era}</h5>

	<div id="map">
		<script>
			function initMap() {
				var location = {
					lat : ${wonder.longitude},
					lng : ${wonder.latitude}
				};
				var map = new google.maps.Map(document.getElementById('map'), {
					zoom : 4,
					center : location
				});
				var marker = new google.maps.Marker({
					position : location,
					map : map
				});
			}
		</script>
		<script async defer
			src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1CKKidcuJxSfbCeNyMW0eWcGmAKaJCnU&callback=initMap">
			
		</script>
</body>
</html>