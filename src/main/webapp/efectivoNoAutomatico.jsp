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
        <title>JSP Page</title>
    </head>
    <body> 
        <%
            String TipoPago = request.getParameter("tipoPago");
            String Reservacion = request.getAttribute("idReservacion").toString();
            String rol = request.getParameter("rol");
            String usuario = request.getParameter("usuario");
        %>
        
        <form method="POST" action="validacionPago.jsp">
            
            <label>Nombre Completo</label>
            <input type="text" name="nombreFactura">
            
            <label>Direccion</label>
            <input type="text" name="direccionFactura">
            
            <label>Telefono</label>
            <input type="text" name="telefonoFactura">
            
            <input hidden="true" type="text" name="idReservacion" value="<%=Reservacion%>">
            <input hidden="true" type="text" name="tipoPago" value="<%=TipoPago%>">
            <input hidden="true" type="text" name="usuario" value="<%=usuario%>">
            <input hidden="true" type="text" name="rol" value="<%=rol%>">
            <input hidden="true" type="text" name="numeroTarjeta" value="0">
            
            
            <input type="submit" name="btn_pago" value="efectivoNoAutomatico">
        </form>
            
            <h1><%=TipoPago%></h1>
        <h1><%=Reservacion%></h1>
        <h1><%=rol%></h1>
        <h1><%=usuario%></h1>
        
        
    </body>
</html>
