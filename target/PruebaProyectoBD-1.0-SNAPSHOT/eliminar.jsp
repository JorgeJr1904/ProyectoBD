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
            String idUsuarioPass = request.getParameter("idUsuarioPass");
            String nuevaPass = request.getParameter("nuevaPass");
            String rol = request.getParameter("rol");
            String usuario = request.getParameter("usuario");
            String precio = request.getParameter("precio");
            String habitaciones = request.getParameter("noHabitaciones");
            String roles = request.getParameter("tipoUsuario");
            if ("accion".equals(request.getParameter("eliminarUsuario"))) {
                String id = request.getParameter("id").replace(" ", "");
                UsuariosDAO usuariosDAO = new UsuariosDAO();
                Usuarios usuarios = new Usuarios(Integer.valueOf(id));
                usuariosDAO.eliminarUsuario(usuarios);
                request.setAttribute("rol", rol);
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("company.jsp").forward(request, response);
            }
            if ("agregar".equals(request.getParameter("btn_agregarUsuario"))) {
                UsuariosDAO usuarioDao = new UsuariosDAO();
                Usuarios usuarios = new Usuarios(Integer.valueOf(roles), request.getParameter("nombreUsuario"),
                        request.getParameter("correo"), request.getParameter("contra"));
                usuarioDao.agregarUsuario(usuarios);
                request.setAttribute("rol", rol);
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("company.jsp").forward(request, response);

            }
            if ("insertarHabitacion".equals(request.getParameter("btn_InsertarHabitacion"))) {
                HotelesDAO hotelesDao = new HotelesDAO();
                Hoteles hotel = new Hoteles(request.getParameter("NombreHabitacion"), Integer.parseInt(precio.trim()), Integer.parseInt(habitaciones.trim()));
                hotelesDao.insertarImagen(hotel);
                request.setAttribute("rol", rol);
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("company.jsp").forward(request, response);

            }
            if ("cambiarPass".equals(request.getParameter("btn_cambiarPass"))) {

                UsuariosDAO usuarioDao = new UsuariosDAO();
                Usuarios usuarios = new Usuarios(Integer.valueOf(idUsuarioPass), nuevaPass);
                usuarioDao.cambiarPass(usuarios);
                request.setAttribute("rol", rol);
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("company.jsp").forward(request, response);
            }
        %>
    </body>
</html>
