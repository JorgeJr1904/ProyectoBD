<%-- 
    Document   : eliminar
    Created on : 23/10/2022, 16:15:25
    Author     : JorgeJr
--%>

<%@page import="constructores.Hoteles"%>
<%@page import="DAO.HotelesDAO"%>
<%@page import="constructores.Usuarios"%>
<%@page import="DAO.UsuariosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validacion Usuarios</title>
    </head>
    <body>
        <%

            String rol = request.getParameter("rol");
            String usuario = request.getParameter("usuario");
            if ("accion".equals(request.getParameter("eliminarUsuario"))) {
                String id = request.getParameter("id").replace(" ", "");
                UsuariosDAO usuariosDAO = new UsuariosDAO();
                Usuarios usuarios = new Usuarios(Integer.valueOf(id));
                usuariosDAO.eliminarUsuario(usuarios);
                request.getRequestDispatcher("crearUsuario.jsp").forward(request, response);
            }
            if ("accion".equals(request.getParameter("agregar_usuario"))) {
                String roles = request.getParameter("tipoUsuario");
                UsuariosDAO usuarioDao = new UsuariosDAO();
                Usuarios usuarios = new Usuarios(Integer.valueOf(roles), request.getParameter("nombreUsuario"),
                        request.getParameter("correo"), request.getParameter("contra"));
                usuarioDao.agregarUsuario(usuarios);
                request.getRequestDispatcher("crearUsuario.jsp").forward(request, response);
            
            }if ("accion".equals(request.getParameter("insertar_habitacion"))) {
             String precio = request.getParameter("precio");
             String habitaciones = request.getParameter("noHabitaciones");
             HotelesDAO hotelesDao = new HotelesDAO();
             Hoteles hotel = new Hoteles(request.getParameter("NombreHabitacion"), Integer.parseInt(precio.trim()), Integer.parseInt(habitaciones.trim()));
             hotelesDao.insertarImagen(hotel);
             request.getRequestDispatcher("company.jsp").forward(request, response);
             
            }else {
                request.setAttribute("rol", rol);
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("crearUsuario.jsp").forward(request, response);
            }                                
            
        %>
    </body>
</html>
