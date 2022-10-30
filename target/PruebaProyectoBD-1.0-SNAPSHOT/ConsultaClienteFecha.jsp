<%-- 
    Document   : ConsultaClienteFecha
    Created on : 29/10/2022, 22:10:42
    Author     : JorgeJr
--%>

<%@page import="constructores.ConsultaClienteFecha"%>
<%@page import="java.util.List"%>
<%@page import="DAO.ConsultaClienteFechaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="mdl-tabs__panel" id="tabListAdmin">
            <div class="mdl-grid">
            </div>
            <div class="main">
                <h1 class="text1">LISTA DE USUSARIOS</h1>
            </div>
            <table class="table2">
                <thead>
                    <tr>
                        <th scope="col">FECHA RESERVACION</th>
                        <th scope="col">NOMBRE</th>
                        <th scope="col">APELLIDOS</th>
                        <th scope="col">TIPO DE PAGO</th>
                    </tr>
                </thead>
                <tbody>
                    <% ConsultaClienteFechaDAO CcfDAO = new ConsultaClienteFechaDAO();
                        List<ConsultaClienteFecha> Ccf = CcfDAO.ListarCCF();
                        for (ConsultaClienteFecha CFH : Ccf) {
                    %>

                    <tr>
                        <th scope="row"><%=CFH.getFechaReserva()%></th>
                        <td><%=CFH.getNombresPersona()%></td>
                        <td><%=CFH.getApellidosPersona()%></td>
                        <td><%=CFH.getNombrePago()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
