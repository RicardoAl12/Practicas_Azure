<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" import="com.productos.seguridad.*"%>

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
	Usuario user = new Usuario();
	%>
	<%
	String usuario;
	HttpSession sesion = request.getSession();
	if (sesion.getAttribute("usuario") == null || (Integer) sesion.getAttribute("perfil") != 3) //3: si no es admin no se abre
	{
		System.out.println("noUser");
	%>
	<jsp:forward page="login.jsp">
		<jsp:param name="error" value="Debe registrarse en el sistema." />
	</jsp:forward>
	<%
	} else {
	usuario = (String) sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
	int perfil = (Integer) sesion.getAttribute("perfil");
	%>
	
	
		<!--Encabezado-->
  <header class="encabezado">
    <img src="https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/global/img/logo-tu-hogar.svg" alt="Logo" class="logo">
    <nav>
        <ul>
            <li><a href="menu.jsp">Menu</a></li>
            <li><a href="anadir.jsp">Añadir</a></li>          
            <li><a href="cerrarSesion.jsp">Cerrar Sesion</a></li>
        </ul>
    </nav> 
</header>


		 <div class="form-container">
        <form class="form_inicio" action="respuesta_vendedor.jsp" method="post">
            <h2>Nuevo Vendedor/Administrador</h2>
            <div class="username">
                <label>Id:</label>
                <input type="number" placeholder="Ingrese el id" name="id_us" value="<%= user.id_cliente() %>" readonly>
            </div>
            <div class="username">
                <label>Nombre:</label>
                <input type="text" placeholder="Ingrese el nombre" name="nombre_us" required>
            </div>
            <div class="username">
                <label>Dirección de correo electrónico:</label>
                <input type="text" placeholder="Ingrese el e-mail" name="direccion_us" required>
            </div>
            <div class="username">
                <label>Perfil:</label>
                <%= user.mostrarPerfil() %>
            </div>
            <div>
                <input class="boton_enviar" type="submit" value="Enviar">
            </div>
        </form>
    </div>
	
	
	
</body>
</html>
<%
}
%>
