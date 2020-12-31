<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="cl.awakelab.model.Participante"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Participante</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"´
	 rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
</head>
<body>
	<div class="container">
	<h1>Detalle del Participante</h1>
	<c:set var="p" value="${participante}"></c:set>
	<% 
		//rescato desde el request, el Participante que envía el Servlet MostrarParticipante, para luego mostrarlo.
		Participante p =  (Participante)request.getAttribute("participante");
	
	%>
	
	<h2><c:out value="${p.getNombre()}"></c:out> <c:out value="${p.getApellido()"></c:out></h2>
	<h3><c:out value="${p.getRut()}"></c:out></h3>
	 
	
	<a href="Controlador">Volver</a>
	</div>

</body>
</html>