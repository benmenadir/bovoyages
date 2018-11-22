<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html lang="fr">
<%@ include file="content/head.jsp"%>

<body class="animsition">
	<div class="page-wrapper">

		<%@ include file="content/headermobile.jsp"%>

		<%@ include file="content/navbar.jsp"%>

		<!-- PAGE CONTAINER-->
		<div class="page-container">

			<%@ include file="content/header.jsp"%>

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="overview-wrap">
									<h2 class="title-1">Vue d'ensemble</h2>
								</div>
							</div>
						</div>

						<%@ include file="content/chart.jsp"%>

						<div class="row">
							<div class="col-md-12">
								<div class="overview-wrap">
									<h2 class="title-1 m-b-25">Liste Voyage</h2>
									<a href="addNewDestination"
										class="btn btn-success btn-sm"><i class="fa fa-magic"></i>&nbsp;
										Ajouter une dest.</a>
								</div>
								<div class="table-responsive m-b-40">
									<table class="table table-borderless table-striped table-data3">
										<thead>
											<tr>
												<th>Id.</th>
												<th>Région</th>
												<th>Description</th>
												<th>Idcity</th>
												<th>Etat</th>
												<th>Supprimer</th>
												<th>Reg. &amp; Des.</th>
												<th>Dat. &amp; Pri.</th>
												<th>Images</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${destinations}" var="destination">
												<tr>
													<td>${destination.id }</td>
													<td>${destination.region }</td>
													<td>${destination.description }</td>
													<td>${destination.idcity }</td>
													<td>${destination.etat }</td>
													<td><a
														href="deleteDestination?idDest=${destination.id }"
														class="btn btn-danger btn-sm"><i class="fa fa-rss"></i>&nbsp;Supprimer</a></td>
													<td><a
														href="editDestination?id=${destination.id }"
														class="btn btn-warning btn-sm"><i
															class="fa fa-map-marker"></i>&nbsp;Modifier</a></td>

													<td><a
														href="addDateDeVoyage?idd=${destination.id }"
														class="btn btn-success btn-sm"><i class="fa fa-magic"></i>&nbsp;Ajouter</a></td>
													<td><a
														href="addImages?idDest=${destination.id }"
														class="btn btn-primary btn-sm"><i class="fa fa-star"></i>&nbsp;Ajouter</a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="copyright">
										<p>
											Copyright 2018 BoVoyages. All rights reserved. Template by <a
												href="#">BoVoyages</a>.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END MAIN CONTENT-->
				<!-- END PAGE CONTAINER-->
			</div>
		</div>
	</div>
	<%@ include file="content/script.jsp"%>
</body>

</html>
<!-- end document-->
