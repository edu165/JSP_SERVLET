<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Pagina final</title>
</head>
<body>
<table align="center">
<tr>
<td>Bienvenido:</td><td> <%= request.getParameter("name") %> </td>
</tr>
<tr>
<td>La Edad es :</td><td> ${age} </td>
</tr>
<tr>
<td>Curso:</td><td> <%= request.getParameter("course") %></td>
</tr>


	<tr>
	<td><input type="button" onclick="window.location.href='datos.jsp'"  value="Volver"></td>
	<td><input type="button" onclick="window.location.href='listado.jsp'"  value="Ver Listado"></td>
	<td>
	<form method="post" action="borrar">
	<input type="hidden" value="<%= request.getParameter("name") %>" name="user">
	
		<input type="submit"  value="Borrar"></td>
	</form>	
		</tr>
</table>
</body>
</html>