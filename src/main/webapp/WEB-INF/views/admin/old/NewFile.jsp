<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  			<div class="section__content section__content--p30"> 
						<div class="container-fluid">
							<div class="row">
								<div class="col-md-12">
									<div class="overview-wrap">
										<f:form action="addDateVoyage" method="get" 
											enctype="multipart/form-data" class="form-horizontal" modelAttribute="datevoyage"> 
 											<fieldset class="inscripition"> 
												<c:if test="${destination.datesVoyage.size() == 0 }">
													<c:set var="title" value="Ajouter "></c:set>
											</c:if> 
 												<c:if test="${destination.datesVoyage.size() > 0  }"> 
													<c:set var="title" value="Modifier "></c:set> 
												</c:if> 
 												<h2 class="title-1 m-b-25">${title }&nbsp;une&nbsp;date&nbsp;de&nbsp;voyage</h2> 
											<div class="card">
													<div class="card-body card-block"> 
														<div class="row form-group"> 
 															<div class="col col-md-3"> 
 																<label for="dateAller" class=" form-control-label">Date 
																	de départ :</label>
															</div> 
															<div class="col-12 col-md-9"> 
																<f:input type="date" id="dateAller" path="dateAller" 
																	placeholder="Date de départ" class="form-control" 
																	min="2018-01-01" max="2029-01-01"
 																	 required="required" /> 															<small class="form-text text-muted">La nouvelle --%> --%>
																	date de départ du voyage</small>
 															</div> 
														</div> -
														<div class="row form-group"> 
															<div class="col col-md-3"> 
 																<label for="dateRetour" class=" form-control-label">Date
 																	de retour :</label>
															</div> 
 															<div class="col-12 col-md-9"> --%> --%>
																<f:input type="date" id="dateRetour" path="dateRetour"
																	placeholder="Date de retour" class="form-control"
 																	min="2018-01-01" max="2029-01-01" 
 																	required="required"/> 
																<small class="form-text text-muted">La nouvelle 
																	date de retour du voyage</small> 
 															</div> 
 														</div> 
 														<div class="row form-group"> 
															<div class="col col-md-3"> 
 																<label for="prixHt" class=" form-control-label">Prix 
																	Ht :</label> 
															</div>
															<div class="col-12 col-md-9"> 
																<f:input type="text" id="prixHT" path="prixHT"
																placeholder="Prix Ht" class="form-control" 
																	 required="required"/>
																<small class="form-text text-muted">le nouveau
 																	prix du voyage</small>
															</div>
														</div>
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
												<div class="card-footer">
													<c:if test="${destination.datesVoyage.size() == 0 }">
															<c:set var="idd" value="${destination.id} "></c:set>
 															<input id="idd" name="idd" value="{idd}" />
															<button class="btn btn-success btn-sm">
															<i class="fa fa-magic"></i>&nbsp;${title} 
														</button> 
													</c:if>
													<c:if test="${destination.datesVoyage.size() > 0 }">
														<f:input path="id"/>
														<c:set var="idd" value="${destination.id} "></c:set>
															<input id="idd" name="idd" value="{idd}" />
															<button formaction="addDateDeVoyage"
																class="btn btn-success btn-sm"> 
																<i class="fa fa-magic"></i>&nbsp;>${title}
 															</button>
													</c:if>
												</div>
											</div> 
										</fieldset> 
										</f:form>
								</div>-->
</body>
</html>