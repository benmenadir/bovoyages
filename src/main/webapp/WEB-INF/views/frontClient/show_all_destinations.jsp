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
	<%@ include file="content/menu.jsp"%>
	<section id="home" name="home"></section>
	<div id="headerwrap">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3">
					<h1>BOVOYAGES</h1>
					<div class="col-lg-12">
						<f:form modelAttribute="destinat" action="search" method="Post">
							<div class="input-group">
								<f:input path="region" class="form-control"
									placeholder="Rechercher votre future destination..." />
								<span class="input-group-btn"> <f:button
										class="btn btn-default" type="submit">Go!</f:button>
								</span>
							</div>
						</f:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Nos destinations -->
	<section id="voyages" name="voyages"></section>
	<div id="portfoliowrap">
		<div class="container">
			<div class="row">
				<h1>
					NOS DESTINATIONS<small>&nbsp;1/3</small>
				</h1>
				<c:forEach items="${destinations}" var="destination">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 desc">
						<div class="project-wrapper">
							<div class="project">
								<div class="photo-wrapper">
									<div class="photo">
										<a class="fancybox"
											href="detailDestination?id=${destination.id}"><img
											class="img-responsive"
											src="<%=request.getContextPath()%>/resources/images/${destination.images[0]}"
											alt="${destination.region}"></a>
									</div>
									<div class="overlay"></div>
								</div>
								<h3>${destination.region}</h3>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!-- Fin Nos destinations -->
	
	<!-- Séparateur -->
	<div class="sep about" data-stellar-background-ratio="0.5"></div>
	<!-- Fin Séparateur -->
	
	<!--Pourquoi nous -->
	<div class="container">
		<div class="row mt centered">
			<h1>POURQUOI VOYAGER AVEC NOUS ?</h1>
			<h3>NOS ENGAGEMENTS</h3>
			<div class="col-lg-4 proc">
				<i class="fa fa-globe"></i>
				<h3>Le monde à portée de main</h3>
				<p>Des réductions négociées par nos experts</p>
			</div>
			<div class="col-lg-4 proc">
				<i class="fa fa-money"></i>
				<h3>Un secret : la simplicité</h3>
				<p>Moins cher ailleurs ? Nous vous remboursons 10x la
					différence**</p>
			</div>
			<div class="col-lg-4 proc">
				<i class="fa fa-heart-o"></i>
				<h3>Notre expertise</h3>
				<p>Séjour Bv+ : votre séjour, une réussite !</p>
			</div>
		</div>
	</div>
		<!--Pourquoi nous -->
		
	<!-- Séparateur -->
	<div class="sep portfolio" data-stellar-background-ratio="0.5"></div>
	<!-- Fin Séparateur -->
	
	<!-- Avis -->
	<div id="testimonials">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 mt">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active mb centered">
								<h3>Vietnam</h3>
								<p>Nous revenons enchantés de notre voyage. Belles
									prestations proposées.</p>
								<p>
									<img class="img-circle"
										src="<%=request.getContextPath()%>/resources/images/pic-t1.jpg"
										width="80">
								</p>
							</div>

							<div class="item mb centered">
								<h3>Etats-Unis</h3>
								<p>Ce voyage nous laissera des souvenirs inoubliables !.</p>
								<p>
									<img class="img-circle"
										src="<%=request.getContextPath()%>/resources/images/pic-t2.jpg"
										width="80">
								</p>
							</div>

							<div class="item mb centered">
								<h3>Namibie</h3>
								<p>Aborder les sites de Pompeï et d'Ercolano en visite
									privée avec une guide cultivée et passionnante ne peut être
									qu'un gage de satisfaction.</p>
								<p>
									<img class="img-circle"
										src="<%=request.getContextPath()%>/resources/images/pic-t3.jpg"
										width="80">
								</p>
							</div>

						</div>
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>
					</div>

				</div>
			</div>
		</div>
	</div>


	<%@ include file="content/contactForm.jsp"%>

	<%@ include file="content/copyrights.jsp"%>

	<%@ include file="content/script.jsp"%>

</body>
</html>
