<%-- 
    Document   : consultaFechaHabitacion
    Created on : 29/10/2022, 21:04:22
    Author     : JorgeJr
--%>

<%@page import="constructores.accionUsuarios"%>
<%@page import="java.util.List"%>
<%@page import="DAO.accionUsuariosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><h1>Acciones (Triggers)</h1></title>
        <link rel="stylesheet" href="css/sss.css">
    </head>
    <body>
        <div class="mdl-tabs__panel" id="tabListAdmin">
            <div class="mdl-grid">
            </div>
            
            
            <table class="table2">
                <thead>
                    <tr>
                        <div class="contenedor">
                <h1 class="text1">LISTA DE ACCIONES POR EL USUARIO</h1>
            </div>
                        <th scope="col">No</th>
                        <th scope="col">Usuario</th>
                        <th scope="col">Contraseña Nueva</th>
                        <th scope="col">Contraseña Vieja</th>
                        <th scope="col">Nuevo Estado</th>
                        <th scope="col">Estado Anterior</th>
                        <th scope="col">Descripcion</th>
                    </tr>
                </thead>
                <tbody>
                    <%  accionUsuariosDAO accionDAO = new accionUsuariosDAO();
                        List<accionUsuarios> accionU = accionDAO.listarAcciones();
                        int numAccion = 1;
                        for (accionUsuarios accionUs : accionU) {
                    %>

                    <tr>
                        <td scope="row"><%=numAccion%>.</td>
                        <td><%=accionUs.getUsuario()%></td>
                        <td><%=accionUs.getNewPass()%></td>
                        <td><%=accionUs.getOldPass()%></td>
                        <td><%=accionUs.getNewEstado()%></td>
                        <td><%=accionUs.getOldEstado()%></td>
                        <td><%=accionUs.getAccion()%></td>
                    </tr>
                    <%
                    numAccion++;
                    }%>
                </tbody>
            </table>
        </div>
                <HR>
                <small>Tomar Nota que F= Desactivado y A= Activo</small>
    </body>
</html>