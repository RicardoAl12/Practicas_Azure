<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.seguridad.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
String id = request.getParameter("id_us");
String nombre = request.getParameter("nombre_us");
String direccion = request.getParameter("direccion_us");
String perf = request.getParameter("cmbPerfil");
Usuario u = new Usuario();

String resultado = u.registroVendedor(Integer.parseInt(id), nombre, direccion, Integer.parseInt(perf));
	
%>

	<%=resultado%>
	<jsp:forward page="login.jsp">
		<jsp:param name="error" value="No se registro user." />
	</jsp:forward>
</body>
</html>