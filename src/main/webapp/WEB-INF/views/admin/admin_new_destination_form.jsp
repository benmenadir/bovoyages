<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

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
									<h2 class="title-1 m-b-25">Ajouter&nbsp;une&nbsp;destination</h2>
								</div>
								<div class="col-md-12">
									<div class="card">
										<div class="card-header">Ajouter&nbsp;une&nbsp;destination</div>
										<f:form action="saveNewDestination" method="get"
											enctype="multipart/form-data" class="form-horizontal"
											modelAttribute="destination">
											<div class="card-body card-block">
												<div class="row form-group">
													<div class="col col-md-3">
														<label for="region" class=" form-control-label">Région
															:</label>
													</div>
													<div class="col-12 col-md-9">
														<f:input path="region" type="text" id="region"
															name="region" placeholder="region" class="form-control"
															value="${destination.region }" required="required" />
														<small class="form-text text-muted">Le nom de
															votre région</small>
													</div>
												</div>
												<div class="row form-group">
													<div class="col col-md-3">
														<label for="description" class=" form-control-label">Description</label>
													</div>
													<div class="col-12 col-md-9">
														<f:textarea path="description" name="description"
															id="description" rows="9" placeholder="Description"
															class="form-control" value="${destination.description }"
															required="required" />
														<small class="form-text text-muted">La description
															de votre région</small>
													</div>
												</div>
												<div class="row form-group">
													<div class="col col-md-3">
														<label for="idcity" class=" form-control-label">Idcity
															:</label>
													</div>
													<div class="col-12 col-md-9">
														<f:input path="idcity" type="text" id="idcity"
															name="idcity" placeholder="idcity" class="form-control"
															value="${destination.idcity }" required="required" />
														<small class="form-text text-muted">L'id de la
															ville ou du pays(https://openweathermap.org)</small>
													</div>
												</div>
												<div class="row form-group">
													<div class="col col-md-3">
														<label for="etat" class=" form-control-label">Rayé
															? :</label>
													</div>
													<div class="col-12 col-md-9">
														<f:input path="etat" type="text" id="etat" name="etat"
															placeholder="etat" class="form-control"
															value="${destination.etat }" required="required" />
														<small class="form-text text-muted">Rayé?</small>
													</div>
												</div>
											</div>
											<div class="card-footer">
												<f:hidden path="id" />
												<button class="btn btn-success btn-sm"
													formaction="saveNewDestination">
													<i class="fa fa-magic"></i>&nbsp;Ajouter
												</button>
											</div>
										</f:form>
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
				</div>
			</div>
		</div>
	</div>
	<%@ include file="content/script.jsp"%>
</body>
</html>