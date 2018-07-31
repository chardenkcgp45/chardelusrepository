<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page d'Accueil</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</head>
<body>

	<nav  class="navbar navbar-expand-sm bg-dark">
		<ul class="nav justify-content-center">
			  <li class="nav-item">
			    <a class="nav-link active" href="#" data-toggle="tooltip" title="Votre page d'Accueil">Accueil</a>
			  </li>
			  <li class="nav-item">
			  	<a class="nav-link" href="${pageContext.request.contextPath}/submitForm" data-toggle="tooltip" title="Votre Panier peut-être créer">Créer un panier</a>
			  </li>
		</ul>
	</nav><br /></br/>
	
	<c:if test="${today != null}">
    	<p>La date d'Aujourd'hui est : <fmt:formatDate value="${today}" pattern="dd-MM-yyyy" /></p>
    </c:if>
	<div class="container-fluid">
		<h1>Chez CHARDELUS PRODUCTION</h1>
		
		<article>
			<p>On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, et empÃªche de se concentrer sur la mise en page elle-mÃªme. L'avantage du Lorem Ipsum sur un texte gÃ©nÃ©rique comme 'Du texte. Du texte. Du texte.' est qu'il possÃ¨de une distribution de lettres plus ou moins normale, et en tout cas comparable avec celle du franÃ§ais standard.
			 De nombreuses suites logicielles de mise en page ou Ã©diteurs de sites Web ont fait du Lorem Ipsum leur faux texte par dÃ©faut, et une recherche pour 'Lorem Ipsum' vous conduira vers de nombreux sites qui n'en sont encore qu'Ã  leur phase de construction. Plusieurs versions sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits clins d'oeil, voire des phrases embarassantes).</p>
		</article>
		<img alt="Mon panier de fuit" src="images/fruit.jpg"  class="mx-auto d-block" data-toggle="tooltip" title="Mon panier de fruit est prêt"/>
		
		<article>
			<p>Le Lorem Ipsum est simplement du faux texte employÃ© dans la composition et la mise en page avant impression. 
			Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les annÃ©es 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour rÃ©aliser un livre spÃ©cimen de polices de texte.
			Il n'a pas fait que survivre cinq siÃ¨cles, mais s'est aussi adaptÃ© Ã  la bureautique informatique, sans que son contenu n'en soit modifiÃ©. Il a Ã©tÃ© popularisÃ© dans les annÃ©es 1960 grÃ¢ce Ã  la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus rÃ©cemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.</p>
		</article>
	</div>
	<footer>
		<p>TP réalisé lors de la formation Java Spring avec Frank M.</p>
	
	</footer>
</body>
</html>