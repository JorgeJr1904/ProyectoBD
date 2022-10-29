<%-- 
    Document   : datosPago
    Created on : 28/10/2022, 23:29:52
    Author     : JorgeJr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Formulario de Tarjeta de Crédito Dinámico</title>
	<link href="https://fonts.googleapis.com/css?family=Lato|Liu+Jian+Mao+Cao&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="css/estilos.css">
</head>
<body>
    
    <%
       String usuario = request.getAttribute("usuario").toString();
       String rol = request.getAttribute("rol").toString();
       String idReservacion = request.getAttribute("idReservacion").toString();
       String tipoPago = request.getAttribute("tipoPago").toString();
       String direccionFactura = request.getAttribute("direccionFactura").toString();
       String telefonoFactura = request.getAttribute("telefonoFactura").toString();
       String nombreFactura = request.getAttribute("nombreFactura").toString();
    %>
	<div class="contenedor">

		<!-- Tarjeta -->
		<section class="tarjeta" id="tarjeta">
			<div class="delantera">
				<div class="logo-marca" id="logo-marca">
					<!-- <img src="img/logos/visa.png" alt=""> -->
				</div>
				<img src="img/chip-tarjeta.png" class="chip" alt="">
				<div class="datos">
					<div class="grupo" id="numero">
						<p class="label">Número Tarjeta</p>
						<p class="numero">#### #### #### ####</p>
					</div>
					<div class="flexbox">
						<div class="grupo" id="nombre">
							<p class="label">Nombre Tarjeta</p>
							<p class="nombre">***********</p>
						</div>

						<div class="grupo" id="expiracion">
							<p class="label">Expiracion</p>
							<p class="expiracion"><span class="mes">MM</span> / <span class="year">AA</span></p>
						</div>
					</div>
				</div>
			</div>

			<div class="trasera">
				<div class="barra-magnetica"></div>
				<div class="datos">
					<div class="grupo" id="firma">
						<p class="label">Firma</p>
						<div class="firma"><p></p></div>
					</div>
					<div class="grupo" id="ccv">
						<p class="label">CCV</p>
						<p class="ccv"></p>
					</div>
				</div>
				<p class="leyenda">ESTOS DATOS SE AGREGARAN A SU USUARIO Y CUALQUIER COSA QUE CONSUMA DENTRO DE ESTABLESIMIENTO SERA CONSUMIDO DE ESTA TARJETA.</p>
				<a href="#" class="link-banco">---------</a>
			</div>
		</section>

		<!-- Contenedor Boton Abrir Formulario -->
		<div class="contenedor-btn">
			<button class="btn-abrir-formulario" id="btn-abrir-formulario">
				<i class="fas fa-plus"></i>
			</button>
		</div>

		<!-- Formulario -->
		<form action="validacionPago.jsp" id="formulario-tarjeta" class="formulario-tarjeta">
			                  
                        <div class="grupo">
				<label for="inputNombre">Número Tarjeta</label>
                                <input type="text" id="inputNombre" maxlength="19" autocomplete="off" >
			</div>
			<div class="grupo">
				<label for="inputNombre">Nombre</label>
                                <input type="text" id="inputNombre" maxlength="19" autocomplete="off" name="nombreFactura">
			</div>
			<div class="flexbox">
				<div class="grupo expira">
					<label for="selectMes">Expiracion</label>
					<div class="flexbox">
						<div class="grupo-select">
							<select name="mes" id="selectMes">
								<option disabled selected>Mes</option>
							</select>
							<i class="fas fa-angle-down"></i>
						</div>
						<div class="grupo-select">
							<select name="year" id="selectYear">
								<option disabled selected>Año</option>
							</select>
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
				</div>

				<div class="grupo ccv">
					<label for="inputCCV">CCV</label>
					<input type="text" id="inputCCV" maxlength="3">
				</div>
			</div>
                    <input hidden="true" type="text" name="nombreFactura" value="<%=nombreFactura%>">
                    <input hidden="true" type="text" name="direccionFactura" value="<%=direccionFactura%>">
                    <input hidden="true" type="text" name="telefonoFactura" value="<%=telefonoFactura%>">
                    <input hidden="true" type="text" name="usuario" value="<%=usuario%>">
                    <input hidden="true" type="text" name="rol" value="<%=rol%>">
                        <input hidden="true" type="text" name="idReservacion" value="<%=idReservacion%>">
                        <input hidden="true" type="text" name="tipoPago" value="<%=tipoPago%>">
                        <input hidden="true" type="text" name="numeroTarjeta" value="1">
                        <button type="submit" class="btn-enviar" name="btn_pago" value="datosPagoAutomatico">Enviar</button>
		</form>
	</div>

	<script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
	<script src="js/main2.js"></script>
    </body>
</html>
