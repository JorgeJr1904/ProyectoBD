<%-- 
    Document   : cambiarPass
    Created on : 30/10/2022, 01:17:41
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String rol = request.getParameter("rol");
            String usuario = request.getParameter("usuario");
            String id = request.getParameter("id");
        %>
        <section class="form-register">
        <h4>AGREGAR DATOS</h4>
        <form method="POST" action="eliminar.jsp">
            
            <input class="controls" type="text" name="nuevaPass"id="nombreFactura" placeholder="INGRESE NUEVA CONTRASEÑA">           

            <input hidden="true" type="text" name="usuario" value="<%=usuario%>">
            <input hidden="true" type="text" name="rol" value="<%=rol%>">
            <input hidden="true" type="text" name="idUsuarioPass" value="<%=id%>">

            
            
            <button class="botons" type="submit" name="btn_cambiarPass" value="cambiarPass">ENVIAR</button>
        </form>
             </section>
    </body>
</html>
