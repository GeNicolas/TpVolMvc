<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reservation vol</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Départ de</span>
										<input class="form-control" type="text" placeholder="City or airport">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group">
										<span class="form-label">Arrivée à</span>
										<input class="form-control" type="text" placeholder="City or airport">
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Date aller</span>
										<input class="form-control" type="date" required>
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-group">
										<span class="form-label">Date retour</span>
										<input class="form-control" type="date" required>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Adulte(18+)</span>
										<select class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
											<option>7</option>
											<option>8</option>
											<option>9</option>
											<option>10</option>
										</select>
										<span class="select-arrow"></span>
									</div>
								</div>
								<div class="col-md-2">
									<div class="form-group">
										<span class="form-label">Enfants (0-17)</span>
										<select class="form-control">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
											<option>5</option>
											<option>6</option>
											<option>7</option>
											<option>8</option>
											<option>9</option>
											<option>10</option>
										</select>
										<span class="select-arrow"></span>
									</div>
								</div>
							</div>
							<div class="row">
								
								<div class="col-md-3">
									<div class="form-btn">
										<button class="submit-btn">Voir vols</button>
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
		<h1> Liste des vols </h1>
		<div>
		<a href="addVol" class="btn btn-link"> ajouter un vol</a>
		<table class="table">
			
			<tr>
				<th>id</th>
				<th>date de depart</th>
				<th>Aeroport de depart </th>
				<th>date d'arrivée</th>
				<th> Aeroport d'arrivée</th>
			
				<th>Compagnie Aerienne du Vol</th>
				<th>Escale possible </th>
				
			</tr>
			<c:forEach var="v" items="${vol}">
				<tr>
					<td> ${v.id}</td>
					<td> ${v.dateDepart}</td>	
					<td> ${v.AeroportDepart}</td>
					<td> ${v.dateArrivee}</td>
					<td> ${v.AeroportArrivee}</td>
					<td> ${v.compagnieAerienneVol}</td>
					<td> ${v.escale}</td>
					
					<td><a class="btn btn-info"
					href="edit?id=${v.id}">modifier</a></td>
				<td><a class="btn btn-danger"
					href="delete?id=${v.id}">supprimer</a></td>
					</tr>
			</c:forEach>
			
			</table>
		
		
	</div>
</body>
</html>