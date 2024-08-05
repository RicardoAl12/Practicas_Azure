<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Productos</title>
	
	<link rel="stylesheet" href="styles.css">
</head>

<body>
	<!--Escript para el carrusel de fotos-->
  <script>
    var carruselIndex = 1;
    mostrarCarrusel(carruselIndex);

    function moverCarrusel(n) {
      mostrarCarrusel(carruselIndex += n);
    }

    function mostrarCarrusel(n) {
      var i;
      var imagenes = document.getElementsByClassName("imagen");
      if (n > imagenes.length) { carruselIndex = 1 }
      if (n < 1) { carruselIndex = imagenes.length }
      for (i = 0; i < imagenes.length; i++) {
        imagenes[i].style.display = "none";
      }
      imagenes[carruselIndex - 1].style.display = "block";
    }
</script>

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


		<!--Parte del texto-->
	<div class="contenedor">
	  <h1 class="titulo" >Que somos?</h1>
	  <p class="subtitulo">Los productos de limpieza son mezclas de varias sustancias que combinan distintas propiedades en función del uso al que están destinados, de la suciedad, superficie y del tipo de local a limpiar o la dureza del agua con la que se limpia..</p>
	</div>
	
	
	<!--Imagenes -->
		<div class="contenedor-carrusel">
		  <button class="flecha flecha-izquierda" onclick="moverCarrusel(-1)">&#10094;</button>
		  <div class="carrusel">
		      <div class="imagen" style="background-image: url(https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/latam/productos/fabuloso/frescura-activa-naranja/banner-fabuloso-energia-naranja.jpg);"></div>
		      <div class="imagen" style="background-image: url(https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/es_mx/plp/fabuloso-naturals-home-banner.jpg);"></div>
		      <div class="imagen" style="background-image: url(https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/global/productos/fabuloso/banner-home-fabuloso-andina.jpg);"></div>
		      <!-- Agrega más imágenes aquí -->
		  </div>
		  <button class="flecha flecha-derecha" onclick="moverCarrusel(1)">&#10095;</button>
		</div>
		
		
		<h1 style="text-align: center; color: green;">Productos de limpieza para tu hogar</h1>
		<!-- imagenes de descripcion -->
		
		 <div class="custom-container">
        <div class="custom-grid-item">
            <img src="https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/es_mx/productos/plp/category/fabuloso-banner-desktop-mx.jpg.rendition.1166.900.jpg" alt="Imagen 1">
            <p>Deja de preguntarte cómo limpiar la grasa de la cocina. Con la línea del jabón líquido para trastes Axion no solo dejarás tus platos rechinando de limpio, sino que también podrás desinfectar utensilios de cocina y recipientes de plástico, quitar el cochambre de la estufa, remover la grasa del horno e incluso del refrigerador.</p>
        </div>
        <div class="custom-grid-item">
            <img src="https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/es_mx/productos/plp/category/axion-banner-desktop-mx.jpg.rendition.1166.900.jpg" alt="Imagen 2">
            <p>Dale a tu hogar una limpieza fabulosa para llenarlo de frescura. Con la línea del limpiador líquido multiusos Fabuloso podrás neutralizar malos olores, virus y bacterias de todas las superficies del hogar.</p>
        </div>
        <div class="custom-grid-item">
            <img src="https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/es_mx/productos/plp/category/suavitel-banner-desktop-mx.jpg.rendition.1166.900.jpg" alt="Imagen 3">
            <p>Convierte el lavado de la ropa en un momento especial con tu suavizante de telas Suavitel favorito. Utilízalo para: lavar ropa de color o ropa negra, lavar ropa de bebé, lavar y desinfectar sábanas, facilitar el planchado de camisas y perfumar la ropa.</p>
        </div>
        <div class="custom-grid-item">
            <img src="https://www.tuhogar.com/content/dam/cp-sites/home-care/tu-hogar/es_mx/productos/plp/category/ajax-banner-desktop-mx.jpg.rendition.1166.900.jpg" alt="Imagen 4">
            <p>La poderosa fórmula del limpiador multiusos Ajax remueve desde la grasa más pegada hasta manchas de sarro. Úsalo como: limpiador de pisos, limpiador desinfectante de baños, limpiavidrios, limpiador de grasa de cocina, repelente de insectos y más.</p>
        </div>
    </div>
    
    
    
     <div class="footer-right">
    <p>&copy; 2024 Mi Sitio Web</p>
    <p>Contacto: <a href="mailto:info@example.com">info@example.com</a></p>
    <p>Siguenos en:</p>
    <div class="social-icons">
        <a href="https://www.facebook.com/misitio" target="_blank" class="social-link">
            <img src="https://img.freepik.com/psd-gratis/cuadrado-3d-logotipo-facebook_125540-1565.jpg?t=st=1717248206~exp=1717251806~hmac=f278d17d1e063b5e87dff810460c55098b3f129c9dbaa5868baa6b70f62b1062&w=1060" class="icon">
            <span>Facebook</span>
        </a>
        <a href="https://www.twitter.com/misitio" target="_blank" class="social-link">
            <img src="https://img.freepik.com/vector-gratis/nuevo-icono-twitter-logo-x-sobre-fondo-negro_1017-45427.jpg?t=st=1717248246~exp=1717251846~hmac=c79f47e4bc4e4836b9c8ef75d8fa72fe1ee0f2d561b5b5781172e4235d7b85a8&w=826" alt="Twitter Icon" class="icon">
            <span>Twitter</span>
        </a>
        <a href="https://www.instagram.com/misitio" target="_blank" class="social-link">
            <img src="https://img.freepik.com/vector-gratis/icono-redes-sociales-vector-instagram-7-junio-2021-bangkok-tailandia_53876-136728.jpg?t=st=1717248224~exp=1717251824~hmac=8f38eee9963dd29c83874851a97fee2aa04c6283c3bff876645432e6d9391b9f&w=826" alt="Instagram Icon" class="icon">
            <span>Instagram</span>
        </a>
    </div>
</div>

</body>
</html>