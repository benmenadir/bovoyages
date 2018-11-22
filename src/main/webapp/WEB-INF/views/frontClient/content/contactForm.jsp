<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<section id="contact"></section>
	<div class="sep contact" data-stellar-background-ratio="0.5"></div>
	<div id="contactwrap">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<p>CONTACT</p>
					<p>Chers BoVoyageurs,Merci d'utiliser uniquement le formulaire
						ci-dessous pour nous signaler d'éventuels bugs rencontrés sur le
						site ou pour nous adresser vos questions relatives à la société
						BoVoyages.</p>
					<p>
						<small>12 Villa de Lourcine, <br /> 75014 Paris,<br /> France.
						</small>
					</p>
					<p>
						<small>Tel. 01 61 08 48 20 <br /> Mail. gtm@gtm-ingenierie.fr<br /></small>
					</p>

				</div>

				<div class="col-lg-6">
					<form class="contact-form php-mail-form" role="form"
						action="contactform/contactform.php" method="POST">

						<div class="form-group">
							<input type="name" name="name" class="form-control"
								id="contact-name" placeholder="Votre nom" data-rule="minlen:4"
								data-msg="S'il vous plaît entrez au moins 4 caractères">
							<div class="validate"></div>
						</div>
						<div class="form-group">
							<input type="email" name="email" class="form-control"
								id="contact-email" placeholder="Votre Email" data-rule="email"
								data-msg="S'il vous plaît entrez une adresse email valide">
							<div class="validate"></div>
						</div>
						<div class="form-group">
							<input type="text" name="subject" class="form-control"
								id="contact-subject" placeholder="Sujet" data-rule="minlen:4"
								data-msg="S'il vous plaît entrez au moins 8 caractères pour le sujet">
							<div class="validate"></div>
						</div>

						<div class="form-group">
							<textarea class="form-control" name="message"
								id="contact-message" placeholder="Votre message" rows="5"
								data-rule="required" data-msg="S'il vous plaît entrez votre message"></textarea>
							<div class="validate"></div>
						</div>

						<div class="loading">
							<img
								src="<%=request.getContextPath()%>/resources/vendor/php-mail-form/loading.gif">
						</div>
						<div class="error-message"></div>
						<div class="sent-message">Votre message a bien été envoyé. Merci
							you!</div>

						<div class="form-send">
							<button type="submit" class="btn btn-large">Envoyez message</button>
						</div>

					</form>
				</div>

			</div>
		</div>
		<!-- /container -->
	</div>