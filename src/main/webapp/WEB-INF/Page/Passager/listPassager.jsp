<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Information Client</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


</head>
<body>

<div class="container">
<h1>liste des passagers</h1>
	<div>
		<a href="addClient" class="btn btn-link">Entrez un nouveau passager ou client</a>
			
	</div>
	<table class="table">
	
	<tr>
			<th>type</th>
			<th>client id</th>
			<th>civilite</th>
			<th>prenom</th>
			<th>nom</th>
			<th>adresse</th>
			<th>codePostal</th>
			<th>ville</th>
			<th>numeroTel</th>
			<th>numeroFax</th>
			<th>email</th>
			<th>reservation</th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="c" items="${client}">
			<tr>
				
				<td>${c.id}</td>
				<td>${c.titre}</td>
				<td>${c.prenom}</td>
				<td>${c.nom}</td>
				<td>${c.adresse.adresse}&nbsp;${c.adresse.pays}</td>
				<td>${c.adresse.codePostal}</td>
				<td>${c.adresse.ville}</td>
				<td>${c.numerotel}</td>
				<td>${c.numerofax}</td>
				<td>${c.email}</td>
				<td>${clientRepo.findByIdWithReservation(c.id).get().getReservation()}$</td>
				<td><a class="btn btn-info" href="edit?id=${c.id}">modifier</a></td>
				<td><a class="btn btn-danger" href="delete?id=${c.id}">supprimer</a></td>
	</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>