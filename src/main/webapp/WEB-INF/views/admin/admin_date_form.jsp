<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
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
									<fieldset class="status">
										<h2 class="title-1 m-b-25">Dates&nbsp;de&nbsp;voyages&nbsp;actuelles</h2>
										<div class="table-responsive m-b-40">
											<table
												class="table table-borderless table-striped table-data3">
												<thead>
													<tr>
														<th>Id.</th>
														<th>Date Aller</th>
														<th>Date Retour</th>
														<th>Prix Ht unitaire</th>
														<th>Etat</th>
														<th>Supprimer</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${destination.datesVoyages}" var="datesVoyages">
														<tr>
															<td>${datesVoyages.id}</td>
															<td>${datesVoyages.dateAller}</td>
															<td>${datesVoyages.dateRetour}</td>
															<td>${datesVoyages.prixHT}€</td>
															<td>${datesVoyages.etat }</td>
															<td><a
																href="deleteDate?idv=${datesVoyages.id }&&idDest=${destination.id}"
																class="btn btn-danger btn-sm"><i class="fa fa-rss"></i>&nbsp;Supprimer</a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</fieldset>
								</div>
							</div>
						</div>
					</div>
					
					<!--  -->
					<div class="section__content section__content--p30"> 
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-12">
									<div class="overview-wrap">
									<f:form action="addDate" method="Get"	enctype="multipart/form-data" class="form-horizontal" modelAttribute="datesVoyage"> 
									<fieldset class="inscripition"> 
										<c:if test="${empty destination}">
											<c:set var="title" value="Ajouter "></c:set>
										</c:if> 
										<c:if test="${not empty destination }"> 
											<c:set var="title" value="Modifier "></c:set> 
										</c:if> 
										<h2 class="title-1 m-b-25">Ajouter&nbsp;une&nbsp;date&nbsp;de&nbsp;voyage</h2> 
										<div class="card">
													<div class="card-body card-block"> 
														<!-- "row form-group -->
														<div class="row form-group"> 
 															<div class="col col-md-3"> 
 																<label for="dateAller" class=" form-control-label">Date 
																	de départ :</label>
															</div> 
																<div class="col-12 col-md-9"> 
																	<f:input id="dateAller" path="dateAller" 
																		placeholder="Date de départ" class="form-control"
																		name="dateAller"
																		value=""
																		type="date"
	 																	 required="required" /> 
	 																	 <small class="form-text text-muted">
	 																	 	La nouvelle date de départ du voyage
	 																	 </small>
																</div>																
														</div>
														<!-- -******************* -->
														<!-- "row form-group -->
														<div class="row form-group"> 
															<div class="col col-md-3"> 
 																<label for="dateRetour" class=" form-control-label">Date
 																	de retour :</label>
															</div> 
 															<div class="col-12 col-md-9">
																<f:input id="dateRetour" path="dateRetour"
																	placeholder="Date de retour" class="form-control"
																	name="dateRetour"
																	value=""
																	type="date"
 																	required="required"/> 
																<small class="form-text text-muted">
																		La nouvelle date de retour du voyage
																</small> 
 															</div> 
 														</div>
 														<!-- -******************* -->
														<!-- "row form-group -->
 														 <div class="row form-group"> 
															<div class="col col-md-3"> 
 																<label for="prixHt" class=" form-control-label">Prix 
																	Ht :</label> 
															</div>
															<div class="col-12 col-md-9"> 
																<f:input type="text" id="prixHT" path="prixHT"  
																name="prixHT"
																value=""
																placeholder="Prix Ht" class="form-control" 
																	 required="required"/>
																<small class="form-text text-muted">
																	le nouveau prix du voyage
																</small>
															</div>
														</div>
														<!-- -******************* -->
														<!-- "row form-group -->
														<div class="row form-group">
															<div class="col col-md-3">
																<label for="etat" class=" form-control-label">Rayé ?
																		:</label>
																</div>
															<div class="col-12 col-md-9">
																<f:input type="text" id="etat" path="etat"
																		placeholder="Etat" class="form-control"
																		required="required"/>
																<small class="form-text text-muted">Rayé?</small>
															</div>
														</div>
													</div>
													<br>
														<!-- -******************* -->
														<!-- "card-body  footer -->
														<!-- -******************* -->
													<div class="card-footer">														
															<input type="hidden" id="idd" name="idd" value="${destination.id}" />
															<button formaction="addDate?idd=${destination.id}" type="submit"
																class="btn btn-success btn-sm"> 
																<i class="fa fa-magic"></i>&nbsp;>Ajouter
 															</button>
												
													</div>
														
														<!-- -******************* -->
										</div>
 									</fieldset>
									
									</f:form>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!--  -->
					<!--  ************************************** -->
					<!-- Ajout Detes de voyage -->
					<div>
										
					</div>
					<!--  ************************************** -->

									<div class="row">
										<div class="col-md-12">
											<div class="copyright">
												<p>
													Copyright 2018 BoVoyages. All rights reserved. Template by
													<a href="#">BoVoyages</a>.
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				<!--</div>
			</div>
		</div>
	</div>-->
	<%@ include file="content/script.jsp"%>
</body>
</html>