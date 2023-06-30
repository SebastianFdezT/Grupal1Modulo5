<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<title>Crear Capacitación</title>
</head>
<body>
	<%@ include file='navbar.jsp'%>
	<img class="imagen-zoom" src="/Grupal1/resources/logoGrupo5.jpg"
		alt="Logo de la empresa">

	<div class=contacto style="display: flex; justify-content: center;">

		<form action="CrearCapacitacion" method="post">
			<h1 class=tituloContacto>Formulario de Capacitación</h1>
			<label for="nombre">Ingrese Identificador de la Capacitación:</label><br>
			<input type="text" id="idCapacitacion" name="idCapacitacion"><br>
			<br> <label for="nombre">Ingrese Rut:</label><br> <input
				type="text" id="rutCliente" name="rutCliente"><br>
			<br> <label for="nombre">Ingrese el Día de la
				Capacitación:</label><br> <input type="text" id="dia" name="dia"><br>
			<br> <label for="nombre">Ingrese la Hora de la
				Capacitación:</label><br> <input type="text" id="hora" name="hora"><br>
			<br> <label for="nombre">Ingrese el Lugar de la
				Capacitación:</label><br> <input type="text" id="lugar" name="lugar"><br>
			<br> <label for="nombre">Ingrese la Duración de la
				Capacitación:</label><br> <input type="text" id="duracion"
				name="duracion"><br>
			<br> <label for="nombre">Ingrese la Cantidad de
				Asistentes:</label><br> <input type="text" id="cantidadAsistentes"
				name="cantidadAsistentes"><br>
			<br>

			<div style="display: flex; justify-content: center;">
				<input type="submit" value="Enviar" class="boton-enviar">
			</div>
		</form>
	</div>
	
    <div id="mensaje-exito" class="alert alert-success" role="alert" style="display: none;">
        La capacitación se creó correctamente.
    </div>
    
    <script>
        function enviarFormulario(event) {
            event.preventDefault(); // Cancelar el envío del formulario
            
            // Mostrar el mensaje de éxito
            document.getElementById("mensaje-exito").style.display = "block";
            
            // Recargar la página después de 3 segundos
            setTimeout(function() {
                location.reload();
            }, 3000);
            
            return false;
        }
    </script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz"
		crossorigin="anonymous"></script>
</body>
</html>