-+<%-- 
    Document   : consultaFechaHabitacion
    Created on : 29/10/2022, 21:04:22
    Author     : JorgeJr
--%>

<%@page import="constructores.ConsultaFechaHabitacion"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ConsultaFechaHabitacionDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONSULTA</title>
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
                <h1 class="text1">LISTA DE USUSARIOS</h1>
            </div>
                        <th scope="col">FECHA RESERVACION</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">APELLIDOS</th>
                        <th scope="col">TIPO HABITACION</th>
                    </tr>
                </thead>
                <tbody>
                    <% ConsultaFechaHabitacionDAO CfhDAO = new ConsultaFechaHabitacionDAO();
                        List<ConsultaFechaHabitacion> Cfh = CfhDAO.ListarCFH();
                        for (ConsultaFechaHabitacion CFH : Cfh) {
                    %>

                    <tr>
                        <td scope="row"><%=CFH.getFechaReserva()%></td>
                        <td><%=CFH.getNombrePersona()%></td>
                        <td><%=CFH.getApellidosPersona()%></td>
                        <td><%=CFH.getNombreHabitacion()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
