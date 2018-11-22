function calculer() {

	var nb = document.getElementById("nbVoyageurs").value;
	var prix = document.getElementById("prix").value;
	var prixTot = document.getElementById("prixTot");
	var nb = parseInt(nb);
	var prix = parseInt(prix);

	var prixTotTtc = 1.2 * nb * prix;
	prixTot.value = prixTotTtc;
}

function afficherForm() {

	let idDest = document.getElementById("idDest").value;
	let idDate = document.getElementById("idDate").value;
	let nbVoyageurs = document.getElementById("nbVoyageurs").value;
	let prixTot = document.getElementById("prixTot").value;
	let container = document.getElementById("inrlog");

	let html = "<section id='voyageurs' name='voyageurs'></section><form action='recapitulatifCommande?idDest="
			+ idDest
			+ "&idDate="
			+ idDate
			+ "&prixTot="
			+ prixTot
			+ "&nbVoyageurs=" + nbVoyageurs + "' method='post'>";

	html += "<br><div id='servicewrap'><div class='container'>"
			+ "<h1>FORMULAIRE DE SAISIE DES VOYAGEURS</h1><p>"
			+ "<div class='input-group input-group-sm mb-2'>"
			+ "<span class='input-group-addon'>"
			+ "<i class='fa fa-address-book'style='font-size:12px;'></i></span>"
			+ "<input type='text' class='form-control' name='nomClient' id='nomClient' placeholder='Nom du Client' aria-label='Small' aria-describedby='inputGroup-sizing-sm'>"
			+ "</div></p><div class='row mt'>";

	for (let i = 1; i <= nbVoyageurs; i++) {
		html += "<div class='col-lg-3 service'>Voyageur&nbsp; "
				+ i
				+ "<br>"
				+ "<div class='input-group input-group-sm mb-3'><span class='input-group-addon'>" +
					"<i class='fa fa-venus-mars'style='font-size:10px;'></i></span>" +
					"<input required type='text' class='form-control form-control-sm' name='civilite"
				+ i
				+ "' id='civilite"
				+ i
				+ "' placeholder='Civilité' aria-label='Small' aria-describedby='inputGroup-sizing-sm'></div>"
				+ "<div class='input-group input-group-sm mb-3'><span class='input-group-addon'>" +
					"<i class='fa fa-address-book'style='font-size:12px;'></i></span>" +
					"<input required type='text' class='form-control form-control-sm' name='nom"
				+ i
				+ "' id='nom"
				+ i
				+ "' placeholder='Nom' aria-label='Small' aria-describedby='inputGroup-sizing-sm'></div>"
				+ "<div class='input-group input-group-sm mb-3'><span class='input-group-addon'>" +
					"<i class='fa fa-address-book'style='font-size:12px;'></i></span>" +
					"<input required type='text' class='form-control form-control-sm' name='prenom"
				+ i
				+ "' id='prenom"
				+ i
				+ "' placeholder='Prénom' aria-label='Small' aria-describedby='inputGroup-sizing-sm'></div>"
				+ "<div class='input-group input-group-sm mb-3'><span class='input-group-addon'>" +
					"<i class='fa fa-calendar'style='font-size:12px;'></i></span>" +
					"<input required type='date' class='form-control form-control-sm' name='dateDeNaissance"
				+ i
				+ "' id='dateDeNaissance"
				+ i
				+ "'aria-label='Small' aria-describedby='inputGroup-sizing-sm'></div></div>";
	}
	html += "<br></div><br>"
			+ "<button type='submit' class='btn btn-primary btn-sm'id='CommandeBtn'><i class='fa fa-star'></i>&nbsp;Commander</button></div></div></form>";

	container.innerHTML = html;
}
