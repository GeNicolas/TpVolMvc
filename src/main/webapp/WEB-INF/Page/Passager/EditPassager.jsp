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

		<form:form method="get" action="${action}" modelAttribute="client"> 
				<form:hidden path="version"/>
				
				<form:label path="id">identifiant</form:label>
			<form:input path="id" cssClass="form-control" readonly="true" />
		<div>
		<div class="form-group">
			<form:label path="titre">Titre</form:label>
			<form:select cssClass="form-control" path="titre"
				items="${titre}" itemLabel="texte" itemValue="texte">
			</form:select>
		</div>
		<div class="form-group">
			<form:label path="prenom">prenom</form:label>
			<form:input path="prenom" cssClass="form-control" />
			<form:errors path="prenom"></form:errors>
		</div>
		<div class="form-group">
			<form:label path="nom">nom</form:label>
			<form:input path="nom" cssClass="form-control" />
			<form:errors path="nom"></form:errors>
		</div>
	
		
		<div class="form-group">
			<form:label path="adresse.adresse">rue</form:label>
			<form:input path="adresse.adresse" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="adresse.codePostal">code postal</form:label>
			<form:input path="adresse.codePostal" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="adresse.ville">ville</form:label>
			<form:input path="adresse.ville" cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="numerotel">numero de telephone</form:label>
			<form:input type="number" path="numerotel"
				cssClass="form-control" />
		</div>
			<div class="form-group">
			<form:label path="numerofax">numero de fax</form:label>
			<form:input type="number" path="numerofax"
				cssClass="form-control" />
		</div>
		<div class="form-group">
			<form:label path="email">email</form:label>
			<form:input path="email" cssClass="form-control" />
			<form:errors path="email"></form:errors>
		</div>
		<div>
			<button class="btn btn-success" type="submit">enregistrer</button>
			<a href="list" class="btn btn-warning">annuler</a>
		</div>
			</div>	
				</form:form>


<%-- 
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
										<span class="form-label">Numero de T�l�phone</span>
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
	 --%>
</body>
</html>