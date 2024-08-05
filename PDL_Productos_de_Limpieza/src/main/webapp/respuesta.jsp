<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
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


<p>
<article style="text-align:left;font-size:25px;font-family:times new roman">
    <%
    String nombre=request.getParameter("nombre");
    String apellido=request.getParameter("apellido");
    String fechaNacimiento=request.getParameter("fechaNacimiento");
    String cedula=request.getParameter("cedula");
    String estadoCivil=request.getParameter("estadoCivil");
    String colorFavorito=request.getParameter("colorFavorito");
    String contrasena=request.getParameter("contrasena");
    String lugarResidencia=request.getParameter("lugarResidencia");
    String correo=request.getParameter("correo");
    String aux=cedula.substring(0, 2);
    
    String aux1="";
    
    if(aux.equals("01")){
    	aux1="Azuay";
    }if(aux.equals("02")){
    	aux1="Bolívar";
    }if(aux.equals("03")){
    	aux1="Cañar";
    }if(aux.equals("04")){
    	aux1="Carchi";
    }if(aux.equals("05")){
    	aux1="Cotopaxi";
    }if(aux.equals("06")){
    	aux1="Chimborazo";
    }if(aux.equals("07")){
    	aux1="El Oro";
    }if(aux.equals("08")){
    	aux1="Esmeraldas";
    }if(aux.equals("09")){
    	aux1="Guayas";
    }if(aux.equals("10")){
    	aux1="Imbabura";
    }if(aux.equals("11")){
    	aux1="Loja";
    }if(aux.equals("12")){
    	aux1="Los Rios";
    }if(aux.equals("13")){
    	aux1="Manabí";
    }if(aux.equals("14")){
    	aux1="Morona Santiago";
    }if(aux.equals("15")){
    	aux1="Napo";
    }if(aux.equals("16")){
    	aux1="Pastaza";
    }if(aux.equals("17")){
    	aux1="Pichincha";
    }if(aux.equals("18")){
    	aux1="Tungurahua";
    }if(aux.equals("19")){
    	aux1="Zamora Chinchipe";
    }if(aux.equals("20")){
    	aux1="Galápagos";
    }if(aux.equals("21")){
    	aux1="Sucumbios";
    }if(aux.equals("22")){
    	aux1="Orellana";
    }if(aux.equals("23")){
    	aux1="Santo Domingo de los Tsáchilas";
    }if(aux.equals("24")){
    	aux1="Santa Elena";
    }if(aux.equals("30")){
    	aux1="Número reservado para ecuatorianos registrados en el exterior.";
    }
    %>

    <%=fechaNacimiento%>
    <br>
    <b>Nombre:</b> <%=nombre%>
    <br>
    <b>Apellido:</b> <%=apellido%>
    <br>
   <b> fechaNacimiento:</b> <%=fechaNacimiento%>
    <br>
   <b> estadoCivil:</b> <%=estadoCivil %>
    <br>
   <b> contrasena</b> <%=contrasena%>
    <br>
   <b> lugarResidencia:</b> <%=lugarResidencia%>
    <br>
	<b>Provincia:</b> <%=aux1%>
	<br>
	<b><font color=<%=colorFavorito%>>Color Favorito de <%=nombre%></font></b>
	<br>
	<b>
	Correo es: <%=correo %>
	</b>
	</article>
	<p id="resultado">
</p>
<script>  
function calcularEdad() {
  var fechaNacimiento = new Date();
  fechaNacimiento.setFullYear(parseInt(<%=request.getParameter("fechaNacimiento").substring(0,4)%>)
		  ,parseInt(<%=request.getParameter("fechaNacimiento").substring(5,7)%>)
		  ,parseInt(<%=request.getParameter("fechaNacimiento").substring(8,10)%>));
  const hoy = new Date();
  var edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
  console.log("f: "+ fechaNacimiento.getMonth());
  if(hoy.getMonth()<fechaNacimiento.getMonth()){
	  edad--;
  }
  document.getElementById("resultado").textContent = "Tienes: " + edad+ " años";
}
calcularEdad();
</script>
</p>

</body>
</html>