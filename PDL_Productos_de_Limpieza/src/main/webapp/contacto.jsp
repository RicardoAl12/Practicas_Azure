<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Productos de Limpieza</title>

<link rel="stylesheet" href="styles.css">
</head>
<body>
	
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

	
	<div class="container">
	<h1>Registro</h1>
	<form action="respuesta.jsp" method="post" >
		<table>
			<tr>
				<td>Nombre:</td>
				<td><input type="text" name="nombre" required></td>
			</tr>
			<tr>
				<td>Apellido:</td>
				<td><input type="text" name="apellido" required></td>
			</tr>
			
			<tr>
				<td>Mes y Año de Nacimiento:</td>
				<td>
					<input type="date" name="fechaNacimiento" />
				</td>
			</tr>
			
			<tr>
				<td>Cédula:</td>
				<td><input type="text" name="cedula"  maxlength="10"/></td>
			</tr>
			<tr>
				<td>Estado Civil:</td>
				<td>
					<select name="estadoCivil">
						<option value="soltero">Soltero</option>
						<option value="casado">Casado</option>
						<option value="divorciado">Divorciado</option>
						<option value="viudo">Viudo</option>
					</select>
				</td>
			</tr>
			
			<tr>
				<td>Color Favorito:</td>
				<td>
					<input type="color" name="colorFavorito" />
				</td>
			</tr>
			
			<tr>
				<td>Contrasena:</td>
				<td><input type="password" id="contrasena" name="contrasena" required></td>
			</tr>
			
			<tr>
				<td>Lugar de Residencia:</td>
				<td>
					<label><input type="radio" name="lugarResidencia" value="Sur"> Sur</label>
					<label><input type="radio" name="lugarResidencia" value="Norte"> Norte</label>
					<label><input type="radio" name="lugarResidencia" value="Centro"> Centro</label>
				</td>
			</tr>
			<tr>
				<td>Foto:</td>
				<td><input type="file" name="foto" accept=".jpg,.gif,.bmp"></td>
			</tr>
			
			
			<tr>
				<td><input type="submit" value="Enviar"></td>

			</tr>
		</table>
	</form>
</div>
	
	
	
	
	

</body>
</html>