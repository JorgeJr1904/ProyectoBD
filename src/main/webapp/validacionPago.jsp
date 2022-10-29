<%-- 
    Document   : validacionPago
    Created on : 28/10/2022, 23:52:18
    Author     : JorgeJr
--%>

<%@page import="constructores.Pagos"%>
<%@page import="DAO.PagosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ValidacionPago</title>
    </head>
    <body>
        <%
            String NombreFactura = request.getParameter("nombreFactura");
            String DireccionFactura = request.getParameter("direccionFactura");
            String TelefonoFactura = request.getParameter("telefonoFactura");
            String TipoPago = request.getParameter("tipoPago");
            String NumeroTarjeta = request.getParameter("numeroTarjeta");
            String Reservacion = request.getParameter("idReservacion");
            String rol = request.getParameter("rol");
            String usuario = request.getParameter("usuario");
            String pago = request.getParameter("btn_pago");
            int respuesta = 1;
            PagosDAO pagosDAO = new PagosDAO();
            

            if ("efectivoNoAutomatico".equals(pago)) {
                Pagos pagos = new Pagos(Integer.valueOf(TipoPago),
                        Integer.valueOf(Reservacion), Integer.valueOf(NumeroTarjeta), NombreFactura, DireccionFactura, TelefonoFactura);
                pagosDAO.agregarPago(pagos);
                request.setAttribute("rol", rol);
                request.setAttribute("usuario", usuario);
                request.setAttribute("respuesta", respuesta);
                request.getRequestDispatcher("hoteles.jsp").forward(request, response);
            }
            if ("datosPagoNoAutomatico".equals(pago)) {
                Pagos pagos = new Pagos(Integer.valueOf(TipoPago),
                        Integer.valueOf(Reservacion), 1, NombreFactura, DireccionFactura, TelefonoFactura);
                pagosDAO.agregarPago(pagos);
                request.setAttribute("rol", rol);
                request.setAttribute("usuario", usuario);
                request.setAttribute("respuesta", respuesta);
                request.getRequestDispatcher("hoteles.jsp").forward(request, response);
            }
            if ("datosPagoAutomatico".equals(pago)) {
                Pagos pagos = new Pagos(Integer.valueOf(TipoPago),
                        Integer.valueOf(Reservacion), 1, NombreFactura, DireccionFactura, TelefonoFactura);
                pagosDAO.agregarPago(pagos);
                request.setAttribute("rol", rol);
                request.setAttribute("usuario", usuario);
                request.setAttribute("respuesta", respuesta);
                request.getRequestDispatcher("hoteles.jsp").forward(request, response);
            }


        %>
        <h1><%=NombreFactura%></h1>
        <h1><%=NombreFactura%></h1>
        <h1><%=DireccionFactura%></h1>
        <h1><%=TelefonoFactura%></h1>
        <h1><%=TipoPago%></h1>
        <h1><%=NumeroTarjeta%></h1>
        <h1><%=Reservacion%></h1>
        <h1><%=rol%></h1>
        <h1><%=usuario%></h1>
    </body>
</html>
