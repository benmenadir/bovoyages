<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<section id="detail" name="detail"></section>
	<div id="aboutwrap">
		<div class="container">
			<div class="row">
			<div class="col-lg-3 name-meteo">
			<%@ include file="content/weather.jsp"%>
			</div>
				<div class="col-lg-9 name-desc">
					<h1>
						NOTRE OFFRE <br />DE VOYAGE POUR :<br />${destination.region } <small>&nbsp;2/3</small></h1>
						
					<div class="name-zig"></div>
					<div class="row">
						<c:forEach items="${destination.images }" var="images">
							<div class="col-lg-4 name">
								<img class="img-responsive"
									src="<%=request.getContextPath()%>/resources/images/${images }">
								<p>${destination.region }</p>
								<div class="name-label"></div>
							</div>
						</c:forEach>
					</div>
					<div class="col-md-6">
						<p>Descriptif</p>
						<p>${destination.description }</p>

					</div>
					<div class="col-md-6">
						<div class="table-responsive">
							<table class="table">
								<caption>Liste des dates de voyages associées</caption>
								<thead>
									<tr>
										<th scope="col">Date Aller</th>
										<th scope="col">Date Retour</th>
										<th scope="col">Prix Ht unitaire</th>
										<th scope="col">Réservation</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${destination.datesVoyages}"
										var="datesVoyage">
										<tr>
											<td>${datesVoyage.dateAller}</td>
											<td>${datesVoyage.dateRetour}</td>
											<td>${datesVoyage.prixHT}&nbsp;€</td>
											<td><a type="button" class="btn btn-primary btn-sm"
												href="showCommande?idDest=${destination.id}&idDate=${datesVoyage.id} "><i
													class="fa fa-star"></i>&nbsp;Réserver</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /aboutwrap -->
	<%@ include file="content/copyrights.jsp"%>
	<%@ include file="content/script.jsp"%>
</body>
</html>