<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.io.*,java.util.*,es.salesianos.model.*" %>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous">
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ver Listado </title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-lg-4 col-sm-6 offset-xl-6 -col-md-2" >
<table>
<tr>
<td>
<form action="verlistado" method="post">
	<input type="submit" value="verlistado">
</form>
</td>
	<td><input type="button" onclick="window.location.href='datos.jsp'"  value="Volver"></td>
	<td><input type="button" onclick="window.location.href='listado.jsp'"  value="Ver Listado"></td>
	</tr>
	</table>
	</div>


<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<div class="col-lg-4 col-sm-6 offset-xl-6 -col-md-2" >
<table border="1">
	<thead>
		<tr>
			<td>Nombre</td>
			<td>Fecha</td>
			<td>Curso</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="user1" items="${listAllUsers}">
			<tr>
				<td><c:out value="${user1.name}"/> </td>
				<td><c:out value="${user1.dateOfBirth}"/> </td>
				<td><c:out value="${user1.course}"/> </td>
				<td><td><a name="user" href="borrar?user=${user1.name}">Borrar</a></td> </td>
	    	</tr>
		</c:forEach>
	</tbody>
</table>
</div>
</div>
</div>

<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>










</body>
</html>