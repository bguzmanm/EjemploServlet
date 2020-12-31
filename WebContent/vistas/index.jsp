<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="cl.awakelab.model.Participante"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Lista de Participantes</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"´
	 rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	
</head>
<body>
	 <div class="container">
	 	<c:set var="cantidad" value="${contador}"></c:set>
	 		
		<!-- <c:if test="${cantidad > 9}">
			<h1>La cantidad es mayor a 9</h1>
		</c:if>-->
		<!-- 
		<c:choose>
			<c:when test="${cantidad > 10}">
				<h1>La cantidad es mayor a 10</h1>
			</c:when>
			<c:when test="${cantidad < 1}">
				<h1>La cantidad es menor a 1</h1>
			</c:when>
			<c:otherwise>
				<h1>La cantidad está entre 1 y 10</h1>
			</c:otherwise>
		</c:choose> -->
	 
		<h1>Listado de Participantes</h1>
		
		<table class="table">
			<thead class="table-dark">
				 <tr>
				 	<th scope="col">Rut</th>
				 	<th scope="col">Nombre</th>
				 	<th scope="col">Apellido</th>
				 </tr>
			</thead>
			<tbody>
			
			<c:forEach var="p" items="${participantes}">
				<tr>
					<th>
					<c:url var="link" value="MostrarParticipante">
						<c:param name="rut" value="${p.getRut()}"></c:param>
						<c:param name="digito" value="R"></c:param>
					</c:url>
					
					<a href="${link}"><c:out value="${p.getRut()}"/></a></th>
					<td><c:out value="${p.getNombre()}"/></td>
					<td><c:out value="${p.getApellido()}"/></td>
				</tr>
			</c:forEach>
			<%
			
				//rescato desde el request, el listado de participantes que nos envía el Servlet.
				//List<Participante> participantes = (ArrayList<Participante>)request.getAttribute("participantes");
		
				//recorro la lista de participantes, para mostrarlos en la tabla.
				//for(Participante p : participantes){
					
				//	out.println("<tr><th><a href='MostrarParticipante?rut=" + p.getRut() +"'>" + p.getRut() + "</a></th><td>" + p.getNombre() + "</td><td>" + p.getApellido() + "</td></tr>");
				//}
		
			%>
			</tbody>
		</table>
		</ul>		
		
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</body>
</html>