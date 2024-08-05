<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<title>Productos</title>
	<link rel="stylesheet" href="styles.css">
</head>
<body>

<%
	Categoria categoria = new Categoria();
	String combo = categoria.mostrarCategoria();
%>
	
			<!--Encabezado-->
  <header class="encabezado">
    <img src="https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/global/img/logo-tu-hogar.svg" alt="Logo" class="logo">
    <nav>
        <ul>
            <li><a href="index.jsp">PDL</a></li>
            <li><a href="contacto.jsp">Contacto</a></li>
            <li><a href="verProductos.jsp">Consulta </a></li>          
            <li><a href="categorias.jsp">Categorias</a></li>
            <li><a href="login.jsp">Iniciar Sesion</a></li>
        </ul>
    </nav>
</header>
	
<div class="texto2">
		<h1 style="color: green; text-align: center;">Buscar productos</h1>
	</div>
	
	<main>
		<form class="form-container" action="reporteCategoria.jsp" method="post">
			
				<label>Escoja la categoria: </label>
				<%= combo %>	
			<input class="boton_enviar" type="submit" value="Enviar">
		</form>
	</main>
	
	
	
	
   
	
</body>
</html>