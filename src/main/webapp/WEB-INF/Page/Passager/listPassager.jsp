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

<link href="https://fonts.googleapis.com/css?family=PT+Sans:400" rel="stylesheet">
<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/style.css" />


</head>
<body>
<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="booking-form">
						<form>
							<div class="form-group">
							
							<div class="row">
								<div class="col-md-4">
									<div class="form-group">
										<span class="form-label">Id Client</span>
										<input class="form-control" type="text" placeholder="Id Client">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<span class="form-label">Nom</span>
										<input class="form-control" type="text" placeholder="Donnez le Nom">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group">
										<span class="form-label">Prenom</span>
										<input class="form-control" type="text" placeholder="Donnez le Prenom">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Adresse</span>
										<input class="form-control" type="text" placeholder="Donnez l'Adresse">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Code Postal</span>
										<input class="form-control" type="text" placeholder="Donnez le Code Postal">
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Ville</span>
										<input class="form-control" type="text" placeholder="Donnez le nom de Ville">
									</div>
								</div>
								
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Numero de Téléphone</span>
										<input class="form-control" type="text" placeholder="Donnez l'Adresse">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Numero de Fax</span>
										<input class="form-control" type="text" placeholder="Donnez le Code Postal">
									</div>
								</div>

								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Email</span>
										<input class="form-control" type="text" placeholder="Donnez le nom de Ville">
									</div>
								</div>
								
								</div>
							</div>
							<div class="row">
								
								<div class="col-md-3">
									<div class="form-btn">
										<button class="submit-btn">Enregistrer client</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<div class="container">
<h1>liste des passagers</h1>
	<div>
		<a href="addClient" class="btn btn-link">Entrez un nouveau passager ou client</a>
			
	</div>
	<table class="table">
	
	<tr>
			<th>type</th>
			<th><spring:message code="client.id"></spring:message></th>
			<th><spring:message code="client.civilite"></spring:message></th>
			<th><spring:message code="client.prenom"></spring:message></th>
			<th><spring:message code="client.nom"></spring:message></th>
			<th><spring:message code="client.adresse"></spring:message></th>
			<th><spring:message code="client.adresse.codePostal"></spring:message></th>
			<th><spring:message code="client.adresse.ville"></spring:message></th>
			<th><spring:message code="client.numeroTel"></spring:message></th>
			<th><spring:message code="client.numeroFax"></spring:message></th>
			<th><spring:message code="client.email"></spring:message></th>
			<th><spring:message code="client.reservation"></spring:message></th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="c" items="${client}">
			<tr>
				
				<td>${c.id}</td>
				<td>${c.civilite}
				<td>${c.prenom}</td>
				<td>${c.nom}</td>
				<td>${c.adresse.numero}&nbsp;${c.adresse.rue}</td>
				<td>${c.adresse.codePostal}</td>
				<td>${c.adresse.ville}</td>
				<td>${c.numeroTel}</td>
				<td>${c.numeroFax}</td>
				<td>${c.email}</td>
				<td>${c.reservation}</td>
				<td><a class="btn btn-info" href="edit?id=${c.id}">modifier</a></td>
				<td><a class="btn btn-danger" href="delete?id=${c.id}">supprimer</a></td>
	</tr>
		</c:forEach>
	</table>
</div>
</body>
</html>