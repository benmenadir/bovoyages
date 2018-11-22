<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Enregistrement du client</title>
</head>
<body>
	<f:form modelAttribute="client">
		<table>
			<tr>
				<td>Nom du Client</td>
				<td><f:input path="nom" /></td>
				<td><f:errors path="nom" cssClass="error" /></td>
			</tr>


			<tr>
				<td><a
					href="recapitulatifCommande?idDest=${destination.id}&idDate=${datesVoyage.id}">Recap</a>></td>

			</tr>
		</table>
	</f:form>

</body>
</html>