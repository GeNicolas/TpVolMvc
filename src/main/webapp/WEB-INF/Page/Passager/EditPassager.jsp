<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="java.util.List"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edition client</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body class="container">
<h1> edition des clients</h1>

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
					
					</div>
					</form>
				</div>
				
			</div>
		</div>
	
</body>
</html>