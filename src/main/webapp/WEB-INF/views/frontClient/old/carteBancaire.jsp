<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <div class="w3-container">
<fieldset>
        <legend>Informations CB</legend>
        <ol>
            <li>
                <fieldset>
                    <legend>Type de carte bancaire</legend>
                    <ol>
                        <li>
                            <input id=visa name=type_de_carte type=radio>
                            <label for=visa>VISA</label>
                        </li>
                        <li>
                            <input id=amex name=type_de_carte type=radio>
                            <label for=amex>AmEx</label>
                        </li>
                        <li>
                            <input id=mastercard name=type_de_carte type=radio>
                            <label for=mastercard>Mastercard</label>
                        </li>
                    </ol>
                </fieldset>
            </li>
            <li>
                <label for=numero_de_carte>N° de carte</label>
                <input id=numero_de_carte name=numero_de_carte type=text required>
            </li>
            <li>
                <label for=securite>Code sécurité</label>
                <input id=securite name=securite type=text required>
            </li>
            <li>
                <label for=nom_porteur>Nom du porteur</label>
                <input id=nom_porteur name=nom_porteur type=text placeholder="Même nom que sur la carte" required>
            </li>
        </ol>
    </fieldset>
</div>