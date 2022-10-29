<%@page import="java.io.InputStream"%>
<%@page import="DAO.HotelesDAO"%>
<%@page import="constructores.Hoteles"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Company</title>
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
        <%String rol = request.getParameter("rol");
        String Usuario = request.getParameter("usuario");%>
        <!-- Notifications area -->
        
        <!-- navLateral -->
        <section class="full-width navLateral">
            <div class="full-width navLateral-bg btn-menu"></div>
            <div class="full-width navLateral-body">
                <div class="full-width navLateral-body-logo text-center tittles">
                    <i class="zmdi zmdi-close btn-menu"></i> INICIO 
                </div>
                <figure class="full-width navLateral-body-tittle-menu">
                    <div>
                        <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
                    </div>
                    <figcaption>
                        <span>  
                            <%=Usuario%><br>
                            <small><%=rol%></small>
                        </span>
                    </figcaption>
                </figure>
                <nav class="full-width">
                    <ul class="full-width list-unstyle menu-principal">
                        <li class="full-width">
                            <a class="full-width">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-view-dashboard"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    INICIO
                                </div>
                            </a>
                        </li>
                        <%if ("ADMIN".equals(request.getParameter("rol")) || rol == "ADMIN" || "SUPERVISOR".equals(request.getParameter("rol"))) {%>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#!" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-case"></i>
                                </div>                             
                                <div class="navLateral-body-cr">
                                    ADMINISTRACION
                                </div>
                                <span class="zmdi zmdi-chevron-left"></span>
                            </a>
                            <ul class="full-width menu-principal sub-menu-options">
                                <li class="full-width">
                                    <a href="company.jsp?usuario=<%=request.getParameter("usuario")%>
                                       &&rol=<%=rol%>" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-balance"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            AGREGAR HOTEL
                                        </div>
                                    </a>
                                </li>
                                <li >

                                </li>
                            </ul>
                        </li><%}%>
                        <%if ("ADMIN".equals(request.getParameter("rol")) || rol == "ADMIN") {%>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#!" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-face"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    USUARIOS
                                </div>
                                <span class="zmdi zmdi-chevron-left"></span>
                            </a>
                            <ul class="full-width menu-principal sub-menu-options">
                                <li class="full-width">
                                    <a href="crearUsuario.jsp?usuario=<%=request.getParameter("usuario")%>
                                       &&rol=<%=rol%>" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-account"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            CREAR USUARIO
                                        </div>
                                    </a>
                                </li>
                               
                            </ul>
                        </li>
                        <%}%>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="hoteles.jsp?usuario=<%=request.getParameter("usuario")%>
                               &&rol=<%=rol%>" class="full-width">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-washing-machine"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    HOTELES
                                </div>
                            </a>
                        </li>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="sales.jsp?usuario=<%=request.getParameter("usuario")%>
                               &&rol=<%=rol%>" class="full-width">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    RESERVAR HOTEL
                                </div>
                            </a>
                        </li>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="#!" class="full-width btn-subMenu">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-wrench"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    INVENTARIOS
                                </div>
                                <span class="zmdi zmdi-chevron-left"></span>
                            </a>
                            <ul class="full-width menu-principal sub-menu-options">
                                <li class="full-width">
                                    <a href="#!" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-widgets"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            OINVENTARIO 1
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="#!" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-widgets"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            INVENTARIO 2
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="#!" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-widgets"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            INVENTARIO 3
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="#!" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-widgets"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            INVENTARIO 4
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </section>
        <!-- pageContent -->
        <section class="full-width pageContent">
            <!-- navBar -->
            <div class="full-width navBar">
                <div class="full-width navBar-options">
                    <i class="zmdi zmdi-swap btn-menu" id="btn-menu"></i>	
                    <div class="mdl-tooltip" for="btn-menu">Hide / Show MENU</div>
                    <nav class="navBar-options-list">
                        <ul class="list-unstyle">
                            <li class="btn-exit" id="btn-exit">
                                <i class="zmdi zmdi-power"></i>
                                <div class="mdl-tooltip" for="btn-exit">LogOut</div>
                            </li>
                            <li class="text-condensedLight noLink" ><small>User Name</small></li>
                            <li class="noLink">
                                <figure>
                                    <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
                                </figure>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <section class="full-width header-well">
                <div class="full-width header-well-icon">
                    <i class="zmdi zmdi-balance"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                        Apartado en el cual se podran agregar nuevas habitaciones conforme se consigan
                    </p>
                </div>
            </section>
            <div class="full-width divider-menu-h"></div>
            <div class="mdl-grid">
                <div class="mdl-cell mdl-cell--12-col">
                    <div class="full-width panel mdl-shadow--2dp">
                        <div class="full-width panel-tittle bg-primary text-center tittles">
                            Nueva Habitacion
                        </div>
                        <div class="full-width panel-content">
                            <form action="eliminar.jsp" method="POST">
                                <div class="mdl-grid">
                                    <div class="mdl-cell mdl-cell--12-col">
                                        <legend class="text-condensedLight"><i class="zmdi zmdi-border-color"></i> &nbsp; Datos de Habitacion</legend><br>
                                    </div>
                                    <div class="mdl-cell mdl-cell--6-col mdl-cell--8-col-tablet">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input name="precio" class="mdl-textfield__input" type="number" pattern="-?[0-9]*(\.[0-9]+)?" id="DNICompany">
                                            <label class="mdl-textfield__label" for="DNICompany">Precio</label>
                                            <span class="mdl-textfield__error">Precio Invalido</span>
                                        </div>
                                    </div>
                                    <div class="mdl-cell mdl-cell--6-col mdl-cell--8-col-tablet">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input name="noHabitaciones" class="mdl-textfield__input" type="number" pattern="-?[A-Za-z0-9Ã¡Ã©Ã­Ã³ÃºÃÃÃÃÃ ]*(\.[0-9]+)?" id="NameCompany">
                                            <label class="mdl-textfield__label" for="NameCompany">Habitaciones Diponibles</label>
                                            <span class="mdl-textfield__error">numero de Habitacion herronea</span>
                                        </div>
                                    </div>
                                    <div class="mdl-cell mdl-cell--12-col">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                            <input class="mdl-textfield__input" type="text" id="addressCompany" name="NombreHabitacion">
                                            <label class="mdl-textfield__label" for="addressCompany">Nombre Habitacion</label>
                                            <span class="mdl-textfield__error">Nombre Invalido</span>
                                        </div>
                                    </div>
                                    <div>
                                        <p class="text-center">
                                           <button name="accion" value="insertar_habitacion" class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addCompany">
                                                <i class="zmdi zmdi-plus"></i> 
                                            </button>
                                        </p>
                                        <div class="mdl-tooltip" for="btn-addCompany">Agregar Habitacion</div> 
                                        
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
        </section>
    </body>
</html>