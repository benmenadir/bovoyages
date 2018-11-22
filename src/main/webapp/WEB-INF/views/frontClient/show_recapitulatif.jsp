<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html>
<html lang="fr">
<head>

<title>BoVoyages</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<%@ include file="content/head.jsp"%>
</head>
<body>
	<%@ include file="content/menudetail.jsp"%>
	<section id="home" name="home"></section>
	<div id="headerwrap">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<h1>BOVOYAGES</h1>
				</div>
			</div>
		</div>
	</div>
	<section id="recap" name="recap"></section>
	<div id="servicewrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-8-offset-2 centered">
					<h1>FÉLICITATIONS</h1>
					<h3>Vous partez pour &nbsp;${voyage.region }</h3>
				</div>
				<!-- /col-lg-8 -->
			</div>
			<div class="table-responsive">
				<table class="table">
					<caption>Récapitulatif de votre commande</caption>
					<thead>
						<tr>
							<th scope="col">Destination</th>
							<th scope="col">Depart</th>
							<th scope="col">Retour</th>
							<th scope="col">Prix Total TTC €</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${voyage.region }</td>
							<td>${voyage.datesVoyage.dateAller }</td>
							<td>${voyage.datesVoyage.dateRetour }</td>
							<td>${prixTot }</td>
						</tr>
					<tbody>
				</table>
				<input type="hidden" id="idDest" value="${destination.id }">
				<input type="hidden" id="idDate" value="${datesVoyage.id }">
			</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Civilité</th>
							<th scope="col">Nom</th>
							<th scope="col">Prénom</th>
							<th scope="col">Date de Naissance</th>
						</tr>
					</thead>
					<tbody>
						<c:set var="totalCount" value="${totalCount+1}"></c:set>
						<c:forEach items="${voyage.voyageurs}" var="voyageur">
							<tr>
								<td>${voyageur.civilite}</td>
								<td>${voyageur.nom}</td>
								<td>${voyageur.prenom}</td>
								<td>${voyageur.dateNaissance}</td>
							</tr>
						</c:forEach>
					<tbody>
					<tfoot>
						<tr>
							<th>Nom du client :</th>
							<th>${voyage.client.nom}</th>
						</tr>
					</tfoot>
					<caption>Récapitulatif liste des voyageurs et le nom du
						client</caption>
				</table>


				<div class="col-lg-12 centered">
					<a href="./" id="payment-button" type="submit"
						class="btn btn-primary btn-sm"> <i class="fa fa-lock fa-lg"></i>&nbsp;
						<span id="payment-button-amount">Payer ${prixTot }&nbsp;€</span> <span
						id="payment-button-sending" style="display: none;">Sending…</span></a>
				</div>
			</div>
		</div>
	</div>
	<div id="inrlog"></div>
	<%@ include file="content/copyrights.jsp"%>
	<%@ include file="content/script.jsp"%>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/show_commande.js"></script>
</body>
</html>