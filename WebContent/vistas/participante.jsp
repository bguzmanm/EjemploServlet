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
	
	<% 
		//rescato desde el request, el Participante que envía el Servlet MostrarParticipante, para luego mostrarlo.
		Participante p =  (Participante)request.getAttribute("participante");
	
	%>
	
	<h2><% out.println(p.getNombre() + " " + p.getApellido()); %></h2>
	<p><% out.println(p.getRut()); %></p>
	
	<a href="Controlador">Volver</a>
	</div>

</body>
</html>