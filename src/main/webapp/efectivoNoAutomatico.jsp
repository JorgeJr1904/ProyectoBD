<%-- 
    Document   : efectivoNoAutomatico
    Created on : 29/10/2022, 00:44:28
    Author     : JorgeJr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <meta http-equiv="X-UA-Compatible" content="ie=edge">
         <link rel="stylesheet" href="css/FORM1.css">
        <title>FORMULARIO PAGO NO AUTOMATICO</title>
    </head>
    <body> 
        <%
            String TipoPago = request.getParameter("tipoPago");
            String Reservacion = request.getParameter("idReservacion") ;
            String rol = request.getParameter("rol");
            String usuario = request.getParameter("usuario");
        %>
        <section class="form-register">
        <h4>AGREGAR DATOS</h4>
        <form method="POST" action="validacionPago.jsp">
            
            <input class="controls" type="text" name="nombreFactura"id="nombreFactura" placeholder="INGRESE NOMBRE COMPLETO">
            
            <input class="controls" type="text" name="direccionFactura" id="direccionFactura" placeholder="INGRESE DIRECCION">

            <input class="controls" type="text" name="telefonoFactura" id="telefonoFactura" placeholder="INGRESE NUMERO DE TELEFONO">
            
            <input hidden="true" type="text" name="idReservacion" value="<%=Reservacion%>">
            <input hidden="true" type="text" name="tipoPago" value="<%=TipoPago%>">
            <input hidden="true" type="text" name="usuario" value="<%=usuario%>">
            <input hidden="true" type="text" name="rol" value="<%=rol%>">
            <input hidden="true" type="text" name="numeroTarjeta" value="0">
            
            
            <button class="botons" type="submit" name="btn_pago" value="efectivoNoAutomatico">ENVIAR</button>
        </form>
             </section>
            
            <h1><%=TipoPago%></h1>
        <h1><%=Reservacion%></h1>
        <h1><%=rol%></h1>
        <h1><%=usuario%></h1>
        
        
    </body>
</html>
