<%-- 
    Document   : index
    Created on : 18/10/2022, 20:07:35
    Author     : JorgeJr
--%>

<%@page import="constructores.UsuarioRolLogin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.loginDao"%>
<%@page import="constructores.login"%>
<%@page session= "true"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/sweetalert2.css">
        <link rel="stylesheet" href="css/material.min.css">
        <link rel="stylesheet" href="css/material-design-iconic-font.min.css">
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" href="css/main.css">
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>');</script>
        <script src="js/material.min.js" ></script>
        <script src="js/sweetalert2.min.js" ></script>
        <script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>
        <script src="js/main.js" ></script>
    </head>
    <body>
        <div class="login-wrap cover">
            <div class="container-login">
                <p class="text-center" style="font-size: 80px;">
                    <i class="zmdi zmdi-account-circle"></i>
                </p>
                <p class="text-center text-condensedLight">INGRESAR CON USUARIO</p>
                <form method="GET">
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="text" id="userName" name="usuario">
                        <label class="mdl-textfield__label" for="userName">USUARIO</label>
                    </div>
                    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                        <input class="mdl-textfield__input" type="password" id="pass" name="pass">
                        <label class="mdl-textfield__label" for="pass">CONTRASEÑA</label>
                    </div>
                    <button  class="button type1" value="sign_in" name="btn_ingresar" class="mdl-button mdl-js-button mdl-js-ripple-effect" style="color: #3F51B5; margin: 0 auto; display: block;">
                        INICIAR SESION</button>

                    <%
                        int res = 0;
                        String rol;
                        loginDao Logindao = new loginDao();
                        login Login = new login(request.getParameter("usuario"), request.getParameter("pass"));

                        if ("sign_in".equals(request.getParameter("btn_ingresar"))) {
                            
                            Logindao.validacionUsuario(Login);
                            res = Logindao.validacionUsuario(Login);
                            if (res == 1) {%>  
                    <%
                        rol = Logindao.ObtencionDatosUsuario(Login);
                        request.setAttribute("usuario", request.getParameter("usuario"));
                        request.setAttribute("rol", Logindao.ObtencionDatosUsuario(Login));
                        request.getRequestDispatcher("home.jsp").forward(request, response);
                    %>
                    <% } else {
                    %>
                    <script>swal("Oops", "CONTRASEÑA O USUARIO INCORRECTO!", "error");</script>
                    <%
                            }
                        }

                    %>

                </form>
            </div>
        </div>
    </body>
</html>
