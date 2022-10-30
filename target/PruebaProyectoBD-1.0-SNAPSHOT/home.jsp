<%@page import="DAO.contadoresDAO"%><%@page import="constructores.contadores"%><%@page import="java.util.*"%><%@page contentType="text/html" pageEncoding="UTF-8"%><%@page import="DAO.loginDao"%><%@page import="constructores.login"%><!DOCTYPE html><html lang="es">    <head>        <meta charset="UTF-8">        <meta name="viewport" content="width=device-width, initial-scale=1">        <title>INICIO</title>        <link rel="stylesheet" href="css/normalize.css">        <link rel="stylesheet" href="css/sweetalert2.css">        <link rel="stylesheet" href="css/material.min.css">        <link rel="stylesheet" href="css/material-design-iconic-font.min.css">        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">        <link rel="stylesheet" href="css/main.css">        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>');</script>        <script src="js/material.min.js" ></script>        <script src="js/sweetalert2.min.js" ></script>        <script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>        <script src="js/main.js" ></script>    </head>    <body>        <%            String usuario = request.getAttribute("usuario").toString();            String rol = request.getAttribute("rol").toString();                    %>                                <%            String Usuario = request.getParameter("usuario");            String res = request.getParameter("rol");        %>        <!-- para mandar a llamar cuantos usuarios hay -->          <%  contadoresDAO contadoresDao = new contadoresDAO();            contadores contador = new contadores(1);            contadores contador2 = new contadores(2);            contadores contador3 = new contadores(3);            int contadorAdmin = contadoresDao.contadorUsuarios(contador);              int contadorSupervisores = contadoresDao.contadorUsuarios(contador2);            int contadorOperadores = contadoresDao.contadorUsuarios(contador3);%>              <!-- navLateral -->        <section class="full-width navLateral">            <div class="full-width navLateral-bg btn-menu"></div>            <div class="full-width navLateral-body">                <div class="full-width navLateral-body-logo text-center tittles">                    <i class="zmdi zmdi-close btn-menu"></i> INICIO                 </div>                <figure class="full-width navLateral-body-tittle-menu">                    <div>                        <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">                    </div>                    <figcaption>                        <span>                              <%=request.getAttribute("usuario")%><br>                            <small><%=request.getAttribute("rol")%></small>                        </span>                    </figcaption>                </figure>                <nav class="full-width">                    <ul class="full-width list-unstyle menu-principal">                        <li class="full-width">                            <a class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-view-dashboard"></i>                                </div>                                <div class="navLateral-body-cr">                                    INICIO                                </div>                            </a>                        </li>                        <%if ("ADMIN".equals(request.getAttribute("rol")) || "SUPERVISOR".equals(request.getAttribute("rol"))) {%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-case"></i>                                </div>                                                             <div class="navLateral-body-cr">                                    ADMINISTRACION                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="company.jsp?usuario=<%=request.getAttribute("usuario")%>&&rol=<%=request.getAttribute("rol")%>" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-balance"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            AGREGAR HOTEL                                        </div>                                    </a>                                </li>                                <li >                                                                    </li>                            </ul>                        </li><%}%>                        <%if ("ADMIN".equals(request.getAttribute("rol"))) {%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-face"></i>                                </div>                                <div class="navLateral-body-cr">                                    USUARIOS                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="crearUsuario.jsp?usuario=<%=request.getAttribute("usuario")%>&&rol=<%=request.getAttribute("rol")%>" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-account"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            CREAR USUARIO                                        </div>                                    </a>                                </li>                                                           </ul>                        </li>                        <%}%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="hoteles.jsp?usuario=<%=request.getAttribute("usuario")%>&&rol=<%=request.getAttribute("rol")%>" class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-washing-machine"></i>                                </div>                                <div class="navLateral-body-cr">                                    HOTELES                                </div>                            </a>                        </li>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="sales.jsp?usuario=<%=request.getAttribute("usuario")%>&&rol=<%=request.getAttribute("rol")%>" class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-shopping-cart"></i>                                </div>                                <div class="navLateral-body-cr">                                    RESERVAR HOTEL                                </div>                            </a>                        </li>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-wrench"></i>                                </div>                                <div class="navLateral-body-cr">                                    INVENTARIOS                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            INVENTARIO 1                                        </div>                                    </a>                                </li>                                <li class="full-width">                                    <a href="consultaFechaHabitacion.jsp" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            INVENTARIO 2                                        </div>                                    </a>                                </li>                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            INVENTARIO 3                                        </div>                                    </a>                                </li>                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            INVENTARIO 4                                        </div>                                    </a>                                </li>                            </ul>                        </li>                    </ul>                </nav>            </div>        </section>        <!-- pageContent -->        <section class="full-width pageContent">            <!-- navBar -->            <div class="full-width navBar">                <div class="full-width navBar-options">                    <i class="zmdi zmdi-swap btn-menu" id="btn-menu"></i>	                    <div class="mdl-tooltip" for="btn-menu">OCULTAR MENU</div>                    <nav class="navBar-options-list">                        <ul class="list-unstyle">                            <li class="btn-Notification" id="notifications">                                <i class="zmdi zmdi-notifications"></i>                                <div class="mdl-tooltip" for="notifications">NOTIFICACIONES</div>                            </li>                            <li class="btn-exit" id="btn-exit">                                <i class="zmdi zmdi-power"></i>                                <div class="mdl-tooltip" for="btn-exit">CERRAR SECION</div>                            </li>                            <li class="text-condensedLight noLink" ><small><%=request.getParameter("usuario")%></small></li>                            <li class="noLink">                                <figure>                                    <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">                                </figure>                            </li>                        </ul>                    </nav>                </div>            </div>            <%if ("ADMIN".equals(request.getAttribute("rol")) || "SUPERVISOR".equals(request.getAttribute("rol"))) {%>            <section class="full-width text-center" style="padding: 40px 0;">                <h3 class="text-center tittles">RESUMEN</h3>                <!-- Tiles -->                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            <%=contadorAdmin%>                            <br>                            <small>ADMINISTRADORES</small>                        </span>                    </div>                    <i class="zmdi zmdi-account tile-icon"></i>                </article>                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            <%=contadorSupervisores%><br>                            <small>SUPERVISORES</small>                        </span>                    </div>                    <i class="zmdi zmdi-accounts tile-icon"></i>                </article>                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            <%=contadorOperadores%><br>                            <small>OPERADORES</small>                        </span>                    </div>                                        <i class="zmdi zmdi-shopping-cart tile-icon"></i>                </article>            </section><%}%>             <section class="full-width" style="margin: 30px 0;">                <h1 class="text-center tittles">INTEGRANTES DEL GRUPO #5</h1>                <!-- TimeLine -->                <div id="timeline-c" class="timeline-c">                    <div class="timeline-c-box">                        <div class="timeline-c-box-icon bg-info">                            <i ></i>                        </div>                        <div class="timeline-c-box-content">                            <h1 class="text-center text-condensedLight">JORGE VILLAGRAN</h1>                            <h2 class="text-center">                                7691-20-14000       </h2>                            <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw">INTEGRANTE 1</i></span>                        </div>                    </div>                    <div class="timeline-c-box">                        <div class="timeline-c-box-icon bg-success">                            <i ></i>                        </div>                        <div class="timeline-c-box-content">                            <h1 class="text-center text-condensedLight">MIGUEL VILLALOBOS</h1>                            <h2 class="text-center">                              7691-20-167862     </h2>                            <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>INTEGRANTE 2</span>                        </div>                    </div>                    <div class="timeline-c-box">                        <div class="timeline-c-box-icon bg-primary">                            <i ></i>                        </div>                        <div class="timeline-c-box-content">                            <h1 class="text-center text-condensedLight">ERICSSON BARILLAS</h1>                            <h2 class="text-center">                             7691-20-16762   </h2>                            <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>INTEGRANTE 3</span>                        </div>                    </div>                    <div class="timeline-c-box">                        <div class="timeline-c-box-icon bg-danger">                            <i></i>                        </div>                        <div class="timeline-c-box-content">                            <h1 class="text-center text-condensedLight">NELSON JERONIMO</h1>                            <h2 class="text-center">                            7691-20-3806    </h2>                            <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>INTEGRANTE 4</span>                        </div>                    </div>                </div>            </section>        </section>    </body></html>