<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<title>Panier</title>
			<meta charset="UTF-8"/>
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
			<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
			<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
			<script>
			$(function() {
				$("#datepicker").datepicker({
					dateFormat:"dd/mm/yy", 
					maxDate: new Date()
				});
			});
		</script>
		</head>
	<body>
	<nav  class="navbar navbar-expand-sm bg-dark">
		<ul class="nav justify-content-center">
			  <li class="nav-item">
			    <a class="nav-link active" href="${pageContext.request.contextPath}/welcome" data-toggle="tooltip" title="Votre page d'Accueil">Accueil</a>
			  </li>
			  <li class="nav-item">
			  		<a class="nav-link" href="${pageContext.request.contextPath}/submitForm" data-toggle="tooltip" title="Votre Panier peut-être créer">Créer un panier</a>
			  </li>
		</ul>
	</nav>

	<h1>Mon Panier </h1><br/>
	<div class="container-fluid">
		<form name="myform" action="submitForm" method="POST">
		
			<c:if test="${null != errorName}"> ${errorName}</c:if>
			<p><Label class="form-check-label" for="code">Nom:</Label> <input class="form-control" type="text" name="nom" placeholder="Votre Nom" value="${param.nom}">
			</p><br/>
		
		    <c:if test="${null != errorCode}"> ${errorCode}</c:if>
			<p><Label class="form-check-label" for="code">Code:</Label> <input class="form-control" type="text" name="code" placeholder="Votre Code produit" value="${param.code}">
			</p><br/>
			
			
			<c:if test="${null != errorPrix}"> ${errorPrix}</c:if>
			<p><Label class="form-check-label" for="prix">Prix:</Label> <input class="form-control" type="text" name="prix" placeholder="Le prix" value="${param.prix}">
			</p><br/>
			
			<c:if test="${null != errorCategorie}"> ${errorCategorie}</c:if>
			<p><Label class="form-check-label" for="categorie">Catégorie:</Label> <input class="form-control" type="text" name="categorie" placeholder="Votre Catégorie" value="${param.categorie}">
			</p><br/>
			
			<c:if test="${null != errorPoids}"> ${errorPoids}</c:if>
			<p><Label class="form-check-label" for="poids">Poids:</Label> <input type="text" class="form-control" name="poids" placeholder="Votre poids" value="${param.poids}">
			</p><br />
			
			<c:if test="${null != errorDate}"> ${errorDate}</c:if>
			<p><Label class="form-check-label" for="date">Date de mise:</Label> <input class="form-control" type="text" name="date" placeholder="Votre date de mise vente" value="${param.date}" id="datepicker">
			</p></br>
			
			<c:if test="${null != errorDescription}"> ${errorDescription}</c:if>
			<p><Label class="form-check-label" for="description">Description:</Label> <input class="form-control" type="text" name="description" placeholder="Votre description" value="${param.description}">
			<br/></p>
			
			<button type="submit">Valider</button>
		</form>
	</div>
</body>