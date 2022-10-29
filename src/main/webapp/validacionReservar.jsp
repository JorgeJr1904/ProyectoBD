<%-- 
    Document   : validacionReservar
    Created on : 27/10/2022, 23:50:58
    Author     : JorgeJr
--%>

<%@page import="constructores.Pagos"%>
<%@page import="DAO.PagosDAO"%>
<%@page import="constructores.Reservaciones"%>
<%@page import="DAO.ReservacionesDAO"%>
<%@page import="constructores.datosPersona"%>
<%@page import="DAO.datosPersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Datos del Usuario como siempre
            String usuario = request.getParameter("usuario");
            String rol = request.getParameter("rol");

            //datos de tabla datos_habitacion
            String idHabitacion = request.getParameter("idHabitacion");

            //datos de tabla reservaciones
            String noHabitaciones = request.getParameter("noHabitaciones");
            String fechaIngreso = request.getParameter("fechaIngreso");
            String fechaSalida = request.getParameter("fechaSalida");

            //datos de tabla datos_persona
            String nombrePersona = request.getParameter("nombrePersona");
            String apellidoPersona = request.getParameter("apellidoPersona");
            String edadPersona = request.getParameter("edadPersona");
            String sexo = request.getParameter("sexo");
            String numeroTelefono = request.getParameter("numeroTelefono");
            String tipoIdentificacion = request.getParameter("tipoIdentificacion");
            String numeroIdentificacion = request.getParameter("numeroIdentificacion");
            String direccionPersona = request.getParameter("direccionPersona");
            String pais = request.getParameter("pais");
            String UsuarioReservacion = request.getParameter("usuario");
            //iusuario foreign key del usuario creador

            //eleccion de pago
            String tipoPago = request.getParameter("tipoPago");

            //eleccion de datos de facturacion
            String Facturacion = request.getParameter("btn_Facturacion");

            //metodo para agregar datos a tabla "datos_persona"
            datosPersonaDAO datospersonaDAO = new datosPersonaDAO();
            datosPersona datospersona = new datosPersona(nombrePersona, apellidoPersona,
                    sexo, Integer.valueOf(tipoIdentificacion), numeroIdentificacion, direccionPersona,
                    numeroTelefono, pais, UsuarioReservacion, Integer.valueOf(edadPersona));

            //metodo para agregar datos a la tabla "reservaciones"
            ReservacionesDAO reservacionesDAO = new ReservacionesDAO();
            
            //metodo para agregar datos a la tabla "pagos"
            PagosDAO pagosDAO = new PagosDAO();
            

            //FACTURACION NO AUTOMATICA
            if (Facturacion == null) {
                if ("1".equals(request.getParameter("tipoPago"))) {
                    datospersonaDAO.agregarDatosPersona(datospersona);
                    Reservaciones reservaciones = new Reservaciones(Integer.valueOf(idHabitacion), 
                            Integer.valueOf(noHabitaciones), datospersonaDAO.ultimoIdDatosPersona(), fechaIngreso, fechaSalida);
                    reservacionesDAO.agregarReservacion(reservaciones);
                    request.setAttribute("idReservacion", reservacionesDAO.ultimoIdReservacion());
                    request.setAttribute("tipoPago", tipoPago);
                    request.setAttribute("usuario", usuario);
                    request.setAttribute("rol", rol);
                    request.getRequestDispatcher("efectivoNoAutomatico.jsp").forward(request, response);

                }

                if ("2".equals(request.getParameter("tipoPago"))) {
                    int res = datospersonaDAO.agregarDatosPersona(datospersona);
                    if (res == 1) {
                        Reservaciones reservaciones = new Reservaciones(Integer.valueOf(idHabitacion), 
                            Integer.valueOf(noHabitaciones), datospersonaDAO.ultimoIdDatosPersona(), fechaIngreso, fechaSalida);
                        reservacionesDAO.agregarReservacion(reservaciones);
                        request.setAttribute("usuario", usuario);
                        request.setAttribute("rol", rol);
                        request.setAttribute("idReservacion", reservacionesDAO.ultimoIdReservacion());
                        request.setAttribute("tipoPago", tipoPago);
                        request.getRequestDispatcher("datosPagoNoAutomatico.jsp").forward(request, response);

                    }
                }

            }%>

        <% //FACTURACION AUTOMATICA
            if ("facturacionAutomatica".equals(request.getParameter("btn_Facturacion"))) {
                if ("1".equals(request.getParameter("tipoPago"))) {
                    int res = datospersonaDAO.agregarDatosPersona(datospersona);
                    if (res == 1) {
                        Reservaciones reservaciones = new Reservaciones(Integer.valueOf(idHabitacion), 
                            Integer.valueOf(noHabitaciones), datospersonaDAO.ultimoIdDatosPersona(), fechaIngreso, fechaSalida);
                        reservacionesDAO.agregarReservacion(reservaciones);
                        Pagos pagos = new Pagos(Integer.valueOf(tipoPago), reservacionesDAO.ultimoIdReservacion(),
                                nombrePersona + " " + apellidoPersona, direccionPersona, numeroTelefono);
                        pagosDAO.agregarPago(pagos);
                        request.setAttribute("usuario", usuario);
                        request.setAttribute("rol", rol);
                        request.getRequestDispatcher("hoteles.jsp").forward(request, response);

                    }
                }
                if ("2".equals(request.getParameter("tipoPago"))) {
                    int res = datospersonaDAO.agregarDatosPersona(datospersona);
                    if (res == 1) {
                        Reservaciones reservaciones = new Reservaciones(Integer.valueOf(idHabitacion), 
                            Integer.valueOf(noHabitaciones), datospersonaDAO.ultimoIdDatosPersona(), fechaIngreso, fechaSalida);
                        reservacionesDAO.agregarReservacion(reservaciones);
                        request.setAttribute("nombreFactura", nombrePersona + apellidoPersona);
                        request.setAttribute("direccionFactura", direccionPersona);
                        request.setAttribute("telefonoFactura", numeroTelefono);
                        request.setAttribute("usuario", usuario);
                        request.setAttribute("rol", rol);
                        request.setAttribute("idReservacion", reservacionesDAO.ultimoIdReservacion());
                        request.setAttribute("tipoPago", tipoPago);
                        request.getRequestDispatcher("datosPagoAutomatico.jsp").forward(request, response);

                    }
                }
            }

        %>
        
        <h1><%=reservacionesDAO.ultimoIdReservacion()%></h1>
        <h1><%=tipoPago%></h1>
        <h1><%=Facturacion%></h1>
        <h1><%=usuario%></h1>
        <h1><%=rol%></h1>
        <h1><%=idHabitacion%></h1>
        <h1><%=noHabitaciones%></h1>
        <h1><%=fechaIngreso%></h1>
        <h1><%=fechaSalida%></h1>
        <h1><%=nombrePersona%></h1>
        <h1><%=apellidoPersona%></h1>
        <h1><%=edadPersona%></h1>
        <h1><%=sexo%></h1>
        <h1><%=tipoIdentificacion%></h1>
        <h1><%=numeroIdentificacion%></h1>
        <h1><%=direccionPersona%></h1>
        <h1><%=pais%></h1>
        <h1><%=UsuarioReservacion%></h1>

    </body>
</html>
