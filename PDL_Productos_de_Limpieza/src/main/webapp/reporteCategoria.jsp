<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>

<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Productos</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>

<%
int cat = Integer.parseInt(request.getParameter("cmbCategoria"));
Producto producto = new Producto();
String tabla = producto.buscarProductoCategoria(cat);
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

	
		<%=tabla%>
	
	
</body>
</html>