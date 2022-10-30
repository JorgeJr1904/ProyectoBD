<%@page import="constructores.Usuarios"%><%@page import="java.util.List"%><%@page import="DAO.UsuariosDAO"%><%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html><html lang="es">    <head>        <meta charset="UTF-8">        <meta name="viewport" content="width=device-width, initial-scale=1">        <meta http-equiv="X-UA-Compatible" content="ie=edge">        <title>ADMINISTRADOR</title>        <link rel="stylesheet" href="css/normalize.css">        <link rel="stylesheet" href="css/sweetalert2.css">        <link rel="stylesheet" href="css/material.min.css">        <link rel="stylesheet" href="css/material-design-iconic-font.min.css">        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">        <link rel="stylesheet" href="css/main.css">                 <meta charset="UTF-8">          <link rel="stylesheet" href="css/FORM1.css">	<link rel="stylesheet" href="css/ESTI.css">	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">                     <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>');</script>        <script src="js/material.min.js" ></script>        <script src="js/sweetalert2.min.js" ></script>        <script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>        <script src="js/main.js" ></script>    </head>    <body>        <%String rol = request.getParameter("rol");        String usuario = request.getParameter("usuario");%>        <!-- Notifications area -->                <!-- navLateral -->        <section class="full-width navLateral">            <div class="full-width navLateral-bg btn-menu"></div>            <div class="full-width navLateral-body">                <div class="full-width navLateral-body-logo text-center tittles">                    <i class="zmdi zmdi-close btn-menu"></i> INICIO                 </div>                <figure class="full-width navLateral-body-tittle-menu">                    <div>                        <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">                    </div>                    <figcaption>                        <span>                              <%=request.getParameter("usuario")%><br>                            <small><%if (rol != null) {%>                                   <%=rol%>                                <%} else {%>                                <%=rol%><%}%></small>                        </span>                    </figcaption>                </figure>                <nav  class="full-width">                    <ul class="full-width list-unstyle menu-principal">                        <li class="full-width">                            <a class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-view-dashboard"></i>                                </div>                                <div class="navLateral-body-cr">                                    INICIO                                </div>                            </a>                        </li>                        <%if ("ADMIN".equals(request.getParameter("rol")) || rol == "ADMIN" || "SUPERVISOR".equals(request.getParameter("rol"))) {%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-case"></i>                                </div>                                                             <div class="navLateral-body-cr">                                    ADMINISTRACION                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="company.jsp?usuario=<%=usuario%>                                       &&rol=<%=rol%>" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-balance"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            AGREGAR HOTEL                                        </div>                                    </a>                                </li>                                <li>                                                                   </li>                            </ul>                        </li><%}%>                        <%if ("ADMIN".equals(request.getParameter("rol")) || rol == "ADMIN") {%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-face"></i>                                </div>                                <div class="navLateral-body-cr">                                    USUARIOS                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="crearUsuario.jsp?usuario=<%=request.getParameter("usuario")%>                                       &&rol=<%=rol%>" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-account"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            CREAR USUARIO                                        </div>                                    </a>                                </li>                                                            </ul>                        </li>                        <%}%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="hoteles.jsp?usuario=<%=request.getParameter("usuario")%>                               &&rol=<%=rol%>" class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-washing-machine"></i>                                </div>                                <div class="navLateral-body-cr">                                    HOTELES                                </div>                            </a>                        </li>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="sales.jsp?usuario=<%=request.getParameter("usuario")%>                               &&rol=<%=rol%>" class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-shopping-cart"></i>                                </div>                                <div class="navLateral-body-cr">                                    RESERVAR HOTEL                                </div>                            </a>                        </li>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-wrench"></i>                                </div>                                <div class="navLateral-body-cr">                                    INVENTARIOS                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            INVENTARIO 1                                        </div>                                    </a>                                </li>                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            INVENTARIO 2                                        </div>                                    </a>                                </li>                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            INVENTARIO 3                                        </div>                                    </a>                                </li>                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            INVENTARIO 4                                        </div>                                    </a>                                </li>                            </ul>                        </li>                    </ul>                </nav>            </div>        </section>        <!-- pageContent -->        <section class="full-width pageContent">            <!-- navBar -->            <div class="full-width navBar">                <div class="full-width navBar-options">                    <i class="zmdi zmdi-swap btn-menu" id="btn-menu"></i>	                    <div class="mdl-tooltip" for="btn-menu">OCULTAR MENU</div>                    <nav class="navBar-options-list">                        <ul class="list-unstyle">                            <li class="btn-Notification" id="notifications">                                <i class="zmdi zmdi-notifications"></i>                                <div class="mdl-tooltip" for="notifications">NOTIFICACIONES</div>                            </li>                            <li class="btn-exit" id="btn-exit">                                <i class="zmdi zmdi-power"></i>                                <div class="mdl-tooltip" for="btn-exit">CERRAR SECION</div>                            </li>                            <li class="text-condensedLight noLink" ><small><%=request.getParameter("usuario")%></small></li>                            <li class="noLink">                                <figure>                                    <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">                                </figure>                            </li>                        </ul>                    </nav>                </div>            </div>            <section class="full-width header-well">                <div class="full-width header-well-icon">                    <i class="zmdi zmdi-account"></i>                </div>                <div class="full-width header-well-text">                    <p class="text-condensedLight">                        EN ESTE APARTADO SE AGREGARAN USUARIOS Y ELIMINARAN                    </p>                </div>            </section>            <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">                <div class="mdl-tabs__tab-bar">                    <a href="#tabNewAdmin" class="mdl-tabs__tab is-active">NUEVO USUARIO</a>                    <a href="#tabListAdmin" class="mdl-tabs__tab">USUARIOS ACTIVOS</a>                </div>                <div class="mdl-tabs__panel is-active" id="tabNewAdmin">                    <div class="mdl-grid">                        <div class="mdl-cell mdl-cell--12-col">                            <div class="full-width panel mdl-shadow--2dp">                                <div class="full-width panel-tittle bg-primary text-center tittles">                                    Nuevo Usuario                                </div>                                <div class="full-width panel-content">                                    <form action="eliminar.jsp" method="POST">                                        <div class="mdl-grid">                                            <div class="mdl-cell mdl-cell--12-col">                                                <legend class="text-condensedLight"><i class="zmdi zmdi-border-color"></i> &nbsp; Crear Nuevo Usuario</legend><br>                                            </div>                                            <input hidden="true" type="text" name="usuario" value="<%=usuario%>">                                            <input hidden="true" type="text" name="rol" value="<%=rol%>">                                            <div class="mdl-cell mdl-cell--12-col">                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">                                                     <input class="mdl-textfield__input" type="text" id="Name" name="nombreUsuario">                                                    <label class="mdl-textfield__label" for="DNIAdmin">Nombre del Usuario</label>                                                                                                                                                        </div>                                            </div>                                            <div class="mdl-cell mdl-cell--6-col mdl-cell--8-col-tablet">                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">                                                                                                        <select  for="NameAdmin" class="mdl-textfield__input" type="text" id="User" name="tipoUsuario">                                                        <option value="1">ADMIN</option>                                                        <option value="2">SUPERVISOR</option>                                                        <option value="3">OPERADOR</option>                                                    </select>                                                    <span class="mdl-textfield__error">Invalido</span>              </div>                                            </div>                                            <div class="mdl-cell mdl-cell--6-col mdl-cell--8-col-tablet">                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">                                                    <input class="mdl-textfield__input" type="password" id="pass" name="contra">                                                    <label class="mdl-textfield__label" for="LastNameAdmin">Contraseña</label>                                                    <span class="mdl-textfield__error">Contraseña Invalida</span>                                                </div>                                            </div>                                            <div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet">                                                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">                                                    <input class="mdl-textfield__input" type="email" id="emailAdmin" name="correo">                                                    <label class="mdl-textfield__label" for="emailAdmin">E-mail</label>                                                    <span class="mdl-textfield__error">Invalid E-mail</span>                                                </div>                                            </div>                                            </div>                                        <p class="text-center">                                            <button name="btn_agregarUsuario" value="agregar" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addAdmin">                                                <i class="zmdi zmdi-plus" ></i>                                            </button>                                        <div class="mdl-tooltip" for="btn-addAdmin" >Agregar Usuario</div>                                        </p>                                    </form>                                </div>                            </div>                        </div>                    </div>                </div>                <div class="mdl-tabs__panel" id="tabListAdmin">                    <div class="mdl-grid">                                </div>                    <div class="main">                    <h1 class="text1">LISTA DE USUSARIOS</h1>                    </div>                               <table class="table2">                                    <thead>                                        <tr>                                            <th scope="col">#</th>                                            <th scope="col">USUARIO</th>                                            <th scope="col">CORREO</th>                                            <th scope="col">ROL</th>                                            <th scope="col">ELIMINAR.USUARIO</th>                                            <th scope="col">CAMB.CONTRASEÑA</th>                                        </tr>                                    </thead>                                    <tbody>                                        <% UsuariosDAO usuarioDao = new UsuariosDAO();                                            List<Usuarios> usuarios = usuarioDao.ListarUsuarios();                                            for (Usuarios usuarioss : usuarios) {                                        %>                                        <tr>                                            <th scope="row"><%=usuarioss.getIdUsuario()%></th>                                            <td><%=usuarioss.getUsuario()%></td>                                            <td><%=usuarioss.getCorreo()%></td>                                            <td><%=usuarioss.getRol()%></td>                                            <td><a class="button type1" href="eliminar.jsp?eliminarUsuario=accion&&id=<%=usuarioss.getIdUsuario()%>                                                   &&usuario=<%=usuario%>&&rol=<%=rol%>">                                                       Eliminar</a></td>                                                                                <td >    <input type="checkbox" id="btn-modal">	<label class="button type1" for="btn-modal" class="lbl-modal">CAMBIAR</label>	<div class="modal">		<div class="contenedor">						<label for="btn-modal">X</label>			<div class="contenido">				<h3>CAMBIAR CONTRASEÑA</h3>                                 <input  class="controls" type="password"  placeholder="INGRESE NUEVA CONTRASEÑA">                                 <button class="button type1" type="submit" >CAMBIAR</button>			</div>		</div>	</div></td>                                            </tr>                                        <%}%>                                                                            </tbody>                                </table>                            </div>                        </div>                    </div>                </div>            </div>        </section>    </body></html>