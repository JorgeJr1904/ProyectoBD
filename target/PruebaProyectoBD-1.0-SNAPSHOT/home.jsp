<%@page import="DAO.contadoresDAO"%><%@page import="constructores.contadores"%><%@page import="java.util.*"%><%@page contentType="text/html" pageEncoding="UTF-8"%><%@page import="DAO.loginDao"%><%@page import="constructores.login"%><!DOCTYPE html><html lang="es">    <head>        <meta charset="UTF-8">        <meta name="viewport" content="width=device-width, initial-scale=1">        <title>INICIO</title>        <link rel="stylesheet" href="css/normalize.css">        <link rel="stylesheet" href="css/sweetalert2.css">        <link rel="stylesheet" href="css/material.min.css">        <link rel="stylesheet" href="css/material-design-iconic-font.min.css">        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">        <link rel="stylesheet" href="css/main.css">        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>        <script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>');</script>        <script src="js/material.min.js" ></script>        <script src="js/sweetalert2.min.js" ></script>        <script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>        <script src="js/main.js" ></script>    </head>    <body>        <!-- para mandar a llamar el rol del usuario -->        <%  loginDao LoginDao = new loginDao();            login Login = new login(request.getParameter("usuario"), request.getParameter("pass"));            String res = LoginDao.ObtencionDatosUsuario(Login);                        request.setAttribute("rol", Login);        %>                <%            String Usuario = request.getParameter("usuario");            String rol = request.getParameter("rol");        %>        <!-- para mandar a llamar cuantos usuarios hay -->          <%  contadoresDAO contadoresDao = new contadoresDAO();            contadores contador = new contadores(1);            contadores contador2 = new contadores(2);            contadores contador3 = new contadores(3);            int contadorAdmin = contadoresDao.contadorUsuarios(contador);              int contadorSupervisores = contadoresDao.contadorUsuarios(contador2);            int contadorOperadores = contadoresDao.contadorUsuarios(contador3);%>        <!-- Notifications area -->        <section class="full-width container-notifications">            <div class="full-width container-notifications-bg btn-Notification"></div>            <section class="NotificationArea">                <div class="full-width text-center NotificationArea-title tittles">NOTIFICACION <i class="zmdi zmdi-close btn-Notification"></i></div>                <a href="#" class="Notification" id="notifation-unread-1">                    <div class="Notification-icon"><i class="zmdi zmdi-accounts-alt bg-info"></i></div>                    <div class="Notification-text">                        <p>                            <i class="zmdi zmdi-circle"></i>                            <strong>REGISTRAR NUEVO USUSARIO</strong>                             <br>                            <small>REGISTRAR</small>                        </p>                    </div>                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-1">OPCION REGISTRAR USUARIO</div>                 </a>                <a href="#" class="Notification" id="notifation-read-1">                    <div class="Notification-icon"><i class="zmdi zmdi-cloud-download bg-primary"></i></div>                    <div class="Notification-text">                        <p>                            <i class="zmdi zmdi-circle-o"></i>                            <strong>NUEVAS ACTUALIZACIONES</strong>                             <br>                            <small>HACE 30 MIN</small>                        </p>                    </div>                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-1">ACTUALIZACIONES</div>                </a>                <a href="#" class="Notification" id="notifation-unread-2">                    <div class="Notification-icon"><i class="zmdi zmdi-upload bg-success"></i></div>                    <div class="Notification-text">                        <p>                            <i class="zmdi zmdi-circle"></i>                            <strong>ACTUALIZAR ARCHIVO</strong>                             <br>                            <small>HACE 40 MINUTOS</small>                        </p>                    </div>                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-2">ACTUALIZAR</div>                </a>                 <a href="#" class="Notification" id="notifation-read-2">                    <div class="Notification-icon"><i class="zmdi zmdi-mail-send bg-danger"></i></div>                    <div class="Notification-text">                        <p>                            <i class="zmdi zmdi-circle-o"></i>                            <strong>NUEVO CORREO</strong>                             <br>                            <small>HACE 20 MIN</small>                        </p>                    </div>                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-2">CORREOS</div>                </a>                <a href="#" class="Notification" id="notifation-read-3">                    <div class="Notification-icon"><i class="zmdi zmdi-folder bg-primary"></i></div>                    <div class="Notification-text">                        <p>                            <i class="zmdi zmdi-circle-o"></i>                            <strong>BORRADOR</strong>                             <br>                            <small>HACE 10 DIAS</small>                        </p>                    </div>                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-3">RESIDUOS</div>                </a>              </section>        </section>        <!-- navLateral -->        <section class="full-width navLateral">            <div class="full-width navLateral-bg btn-menu"></div>            <div class="full-width navLateral-body">                <div class="full-width navLateral-body-logo text-center tittles">                    <i class="zmdi zmdi-close btn-menu"></i> INICIO                 </div>                <figure class="full-width navLateral-body-tittle-menu">                    <div>                        <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">                    </div>                    <figcaption>                        <span>                              <%=Usuario%><br>                            <small><%if (res != null) {%>                                   <%=res%>                                <%} else {%>                                <%=request.getParameter("rol")%><%}%></small>                        </span>                    </figcaption>                </figure>                <nav class="full-width">                    <ul class="full-width list-unstyle menu-principal">                        <li class="full-width">                            <a href="home.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-view-dashboard"></i>                                </div>                                <div class="navLateral-body-cr">                                    HOME                                </div>                            </a>                        </li>                        <%if ("ADMIN".equals(request.getParameter("rol")) || res == "ADMIN" || "SUPERVISOR".equals(request.getParameter("rol"))) {%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-case"></i>                                </div>                                                             <div class="navLateral-body-cr">                                    ADMINISTRACION                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="company.jsp?usuario=<%=request.getParameter("usuario")%>                                       &&rol=<%=res%>" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-balance"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            AGREGAR HOTEL                                        </div>                                    </a>                                </li>                                <li >                                                                    </li>                            </ul>                        </li><%}%>                        <%if ("ADMIN".equals(request.getParameter("rol")) || res == "ADMIN") {%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-face"></i>                                </div>                                <div class="navLateral-body-cr">                                    USUARIOS                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="crearUsuario.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-account"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            CREAR USUARIO                                        </div>                                    </a>                                </li>                                <li class="full-width">                                    <a href="roles.jsp?usuario=<%=request.getParameter("usuario")%>                                       &&rol=<%=res%>" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-accounts"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            CREAR ROL                                        </div>                                    </a>                                </li>                            </ul>                        </li>                        <%}%>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="hoteles.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-washing-machine"></i>                                </div>                                <div class="navLateral-body-cr">                                    HOTELES                                </div>                            </a>                        </li>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="sales.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-shopping-cart"></i>                                </div>                                <div class="navLateral-body-cr">                                    DISPONIBILIDAD                                </div>                            </a>                        </li>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="inventory.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-store"></i>                                </div>                                <div class="navLateral-body-cr">                                    INVENTARIO                                </div>                            </a>                        </li>                        <li class="full-width divider-menu-h"></li>                        <li class="full-width">                            <a href="#!" class="full-width btn-subMenu">                                <div class="navLateral-body-cl">                                    <i class="zmdi zmdi-wrench"></i>                                </div>                                <div class="navLateral-body-cr">                                    CONFIGURACIONES                                </div>                                <span class="zmdi zmdi-chevron-left"></span>                            </a>                            <ul class="full-width menu-principal sub-menu-options">                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            OPCION 1                                        </div>                                    </a>                                </li>                                <li class="full-width">                                    <a href="#!" class="full-width">                                        <div class="navLateral-body-cl">                                            <i class="zmdi zmdi-widgets"></i>                                        </div>                                        <div class="navLateral-body-cr">                                            OPCION 2                                        </div>                                    </a>                                </li>                            </ul>                        </li>                    </ul>                </nav>            </div>        </section>        <!-- pageContent -->        <section class="full-width pageContent">            <!-- navBar -->            <div class="full-width navBar">                <div class="full-width navBar-options">                    <i class="zmdi zmdi-swap btn-menu" id="btn-menu"></i>	                    <div class="mdl-tooltip" for="btn-menu">OCULTAR MENU</div>                    <nav class="navBar-options-list">                        <ul class="list-unstyle">                            <li class="btn-Notification" id="notifications">                                <i class="zmdi zmdi-notifications"></i>                                <div class="mdl-tooltip" for="notifications">NOTIFICACIONES</div>                            </li>                            <li class="btn-exit" id="btn-exit">                                <i class="zmdi zmdi-power"></i>                                <div class="mdl-tooltip" for="btn-exit">CERRAR SECION</div>                            </li>                            <li class="text-condensedLight noLink" ><small><%=request.getParameter("usuario")%></small></li>                            <li class="noLink">                                <figure>                                    <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">                                </figure>                            </li>                        </ul>                    </nav>                </div>            </div>            <%if ("ADMIN".equals(request.getParameter("rol")) || res == "ADMIN" || "SUPERVISOR".equals(request.getParameter("rol"))) {%>            <section class="full-width text-center" style="padding: 40px 0;">                <h3 class="text-center tittles">RESUMEN</h3>                <!-- Tiles -->                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            <%=contadorAdmin%>                            <br>                            <small>ADMINISTRADORES</small>                        </span>                    </div>                    <i class="zmdi zmdi-account tile-icon"></i>                </article>                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            <%=contadorSupervisores%><br>                            <small>SUPERVISORES</small>                        </span>                    </div>                    <i class="zmdi zmdi-accounts tile-icon"></i>                </article>                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            <%=contadorOperadores%><br>                            <small>OPERADORES</small>                        </span>                    </div>                    <i class="zmdi zmdi-accounts tile-icon"></i>                </article>                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            9<br>                            <small>Categories</small>                        </span>                    </div>                    <i class="zmdi zmdi-label tile-icon"></i>                </article>                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            121<br>                            <small>Products</small>                        </span>                    </div>                    <i class="zmdi zmdi-washing-machine tile-icon"></i>                </article>                <article class="full-width tile">                    <div class="tile-text">                        <span class="text-condensedLight">                            47<br>                            <small>Sales</small>                        </span>                    </div>                    <i class="zmdi zmdi-shopping-cart tile-icon"></i>                </article>            </section><%}%>            <section class="full-width" style="margin: 30px 0;">                <h3 class="text-center tittles">HISTORIA</h3>                <!-- TimeLine -->                <div id="timeline-c" class="timeline-c">                    <div class="timeline-c-box">                        <div class="timeline-c-box-icon bg-info">                            <i class="zmdi zmdi-twitter"></i>                        </div>                        <div class="timeline-c-box-content">                            <h4 class="text-center text-condensedLight">Tittle timeline</h4>                            <p class="text-center">                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta nobis rerum iure nostrum dolor. Quo totam possimus, ex, sapiente rerum vel maxime fugiat, ipsam blanditiis veniam, suscipit labore excepturi veritatis.                            </p>                            <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>05-04-2016</span>                        </div>                    </div>                    <div class="timeline-c-box">                        <div class="timeline-c-box-icon bg-success">                            <i class="zmdi zmdi-whatsapp"></i>                        </div>                        <div class="timeline-c-box-content">                            <h4 class="text-center text-condensedLight">Tittle timeline</h4>                            <p class="text-center">                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta nobis rerum iure nostrum dolor. Quo totam possimus, ex, sapiente rerum vel maxime fugiat, ipsam blanditiis veniam, suscipit labore excepturi veritatis.                            </p>                            <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>06-04-2016</span>                        </div>                    </div>                    <div class="timeline-c-box">                        <div class="timeline-c-box-icon bg-primary">                            <i class="zmdi zmdi-facebook"></i>                        </div>                        <div class="timeline-c-box-content">                            <h4 class="text-center text-condensedLight">Tittle timeline</h4>                            <p class="text-center">                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta nobis rerum iure nostrum dolor. Quo totam possimus, ex, sapiente rerum vel maxime fugiat, ipsam blanditiis veniam, suscipit labore excepturi veritatis.                            </p>                            <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>07-04-2016</span>                        </div>                    </div>                    <div class="timeline-c-box">                        <div class="timeline-c-box-icon bg-danger">                            <i class="zmdi zmdi-youtube"></i>                        </div>                        <div class="timeline-c-box-content">                            <h4 class="text-center text-condensedLight">Tittle timeline</h4>                            <p class="text-center">                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta nobis rerum iure nostrum dolor. Quo totam possimus, ex, sapiente rerum vel maxime fugiat, ipsam blanditiis veniam, suscipit labore excepturi veritatis.                            </p>                            <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>08-04-2016</span>                        </div>                    </div>                </div>            </section>        </section>    </body></html>