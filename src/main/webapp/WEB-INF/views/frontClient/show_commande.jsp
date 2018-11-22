<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>

<title>BoVoyages</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<%@ include file="content/head.jsp"%>
</head>
<body>
	<%@ include file="content/menucommande.jsp"%>
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
	<section id="commande" name="commande"></section>
	<div id="servicewrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-8-offset-2 centered">
					<h1>A VOUS L'ÉVASION POUR <small>&nbsp;3/3</small></h1>
					<h3>${destination.region }</h3>
					<p>${destination.description}</p>
				</div>
				<!-- /col-lg-8 -->
			</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Destination</th>
							<th scope="col">Depart</th>
							<th scope="col">Retour</th>
							<th scope="col">Nb voyageurs</th>
							<th scope="col">Prix Unit. HT €</th>
							<th scope="col">Prix Total TTC €</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${destination.region }</td>
							<td>${datesVoyage.dateAller }</td>
							<td>${datesVoyage.dateRetour }</td>
							<td><select name="nbVoyageurs" id="nbVoyageurs"
								onchange=calculer(),afficherForm() class="custom-select">
									<option selected>Choisir</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
							</select></td>
							<td><input id="prix" disabled="disabled" class="w3-input"
								value="${datesVoyage.prixHT }" size="5"></td>
							<td><input name="prixTot" id="prixTot" disabled="disabled" size="5" /></td>
						</tr>
					<tbody>
				</table>
				<input type="hidden" id="idDest" value="${destination.id }">
				<input type="hidden" id="idDate" value="${datesVoyage.id }">
			</div>
		</div>
	</div>

	<input type="hidden" id="idDest" value="${destination.id }">
	<input type="hidden" id="idDate" value="${datesVoyage.id }">
	
	<div id="inrlog"></div>
	<%@ include file="content/copyrights.jsp"%>
	<%@ include file="content/script.jsp"%>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/resources/js/show_commande.js"></script>
</body>
</html>