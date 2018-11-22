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
									<form method="post" enctype="multipart/form-data"
										action="MultipleUploadServlet" class="form-horizontal">
										<h2 class="title-1 m-b-25">Ajouter&nbsp;des&nbsp;images</h2>
										<div class="card">
											<div class="card-header">Ajouter&nbsp;des&nbsp;images</div>
											<div class="card-body card-block">
												<div class="row form-group">
													<div class="col col-md-3">
														<label for="name" class=" form-control-label">Votre
															nom :</label>
													</div>
													<div class="col-12 col-md-9">
														<input type="text" id="name" name="name"
															placeholder="Votre nom" class="form-control"
															required="required"> <small
															class="form-text text-muted">Nom</small>
													</div>
												</div>
												<div class="row form-group">
													<div class="col col-md-3">
														<label for="file-multiple-input" class=" form-control-label">Téléchargement
															de plusieurs fichiers :</label>
													</div>
													<div class="col-12 col-md-9">
														<input type="file" id="multi-file" name="multi-file"
															multiple="" placeholder="Multiple"
															class="form-control-file" required="required"> <small
															class="form-text text-muted">Sélectionnez les images à envoyer
															sur le serveur</small>
													</div>
												</div>
												<input type="hidden" name="idd" value="${destination.id }" />
											</div>

											<div class="card-footer">
												<button class="btn btn-success btn-sm">
													<i class="fa fa-magic"></i>Ajouter
												</button>
												<input type="hidden" name="idd" value="${destination.id }" />
											</div>
										</div>
									</form>
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