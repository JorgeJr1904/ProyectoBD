<%@page import="java.util.List"%>
<%@page import="constructores.Hoteles"%>
<%@page import="DAO.HotelesDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Products</title>
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
        <%String Usuario = request.getParameter("usuario");%>
        
        <%String rol = request.getParameter("rol");%>
        <!-- Notifications area -->
        <section class="full-width container-notifications">
            <div class="full-width container-notifications-bg btn-Notification"></div>
            <section class="NotificationArea">
                <div class="full-width text-center NotificationArea-title tittles">Notifications <i class="zmdi zmdi-close btn-Notification"></i></div>
                <a href="#" class="Notification" id="notifation-unread-1">
                    <div class="Notification-icon"><i class="zmdi zmdi-accounts-alt bg-info"></i></div>
                    <div class="Notification-text">
                        <p>
                            <i class="zmdi zmdi-circle"></i>
                            <strong>New User Registration</strong> 
                            <br>
                            <small>Just Now</small>
                        </p>
                    </div>
                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-1">Notification as UnRead</div> 
                </a>
                <a href="#" class="Notification" id="notifation-read-1">
                    <div class="Notification-icon"><i class="zmdi zmdi-cloud-download bg-primary"></i></div>
                    <div class="Notification-text">
                        <p>
                            <i class="zmdi zmdi-circle-o"></i>
                            <strong>New Updates</strong> 
                            <br>
                            <small>30 Mins Ago</small>
                        </p>
                    </div>
                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-1">Notification as Read</div>
                </a>
                <a href="#" class="Notification" id="notifation-unread-2">
                    <div class="Notification-icon"><i class="zmdi zmdi-upload bg-success"></i></div>
                    <div class="Notification-text">
                        <p>
                            <i class="zmdi zmdi-circle"></i>
                            <strong>Archive uploaded</strong> 
                            <br>
                            <small>31 Mins Ago</small>
                        </p>
                    </div>
                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-2">Notification as UnRead</div>
                </a> 
                <a href="#" class="Notification" id="notifation-read-2">
                    <div class="Notification-icon"><i class="zmdi zmdi-mail-send bg-danger"></i></div>
                    <div class="Notification-text">
                        <p>
                            <i class="zmdi zmdi-circle-o"></i>
                            <strong>New Mail</strong> 
                            <br>
                            <small>37 Mins Ago</small>
                        </p>
                    </div>
                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-2">Notification as Read</div>
                </a>
                <a href="#" class="Notification" id="notifation-read-3">
                    <div class="Notification-icon"><i class="zmdi zmdi-folder bg-primary"></i></div>
                    <div class="Notification-text">
                        <p>
                            <i class="zmdi zmdi-circle-o"></i>
                            <strong>Folder delete</strong> 
                            <br>
                            <small>1 hours Ago</small>
                        </p>
                    </div>
                    <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-3">Notification as Read</div>
                </a>  
            </section>
        </section>
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
                            <a href="home.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-view-dashboard"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    HOME
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
                                    <a href="company.jsp??usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">
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
                                    <a href="crearUsuario.jsp??usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-account"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            CREAR USUARIO
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="roles.jsp??usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-accounts"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            CREAR ROL
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <%}%>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="hoteles.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">
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
                            <a href="sales.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-shopping-cart"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    CHECK OUT
                                </div>
                            </a>
                        </li>
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="inventory.jsp??usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-store"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    INVENTARIO
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
                                    SETTINGS
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
                                            OPTION
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="#!" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-widgets"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            OPTION
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
                            <li class="btn-Notification" id="notifications">
                                <i class="zmdi zmdi-notifications"></i>
                                <div class="mdl-tooltip" for="notifications">Notifications</div>
                            </li>
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
                    <i class="zmdi zmdi-washing-machine"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                        Aqui puede asignar las habitaciones.
                    </p>
                </div>
            </section>
            <div class="main">
                    <h1 class="text1">LISTA DE HOTELES</h1>
                    </div>
            <table class="table2">
                <thead
                    <tr >
                        <th>HABITACION</th>
                        <th>PRECIO</th>
                        <th>DISPONIBLES</th>
                        <th>IMAGEN</th>
                </thead>
                <tbody>
                    <%
                        HotelesDAO hotelesDao = new HotelesDAO();
                        List<Hoteles> hoteles = hotelesDao.seleccionar();
                        //Collections.reverse(mensajes); sirve para hacer la lista de mayor a menor
                        for (Hoteles hotel : hoteles) {
                    %>
                    <tr>
                        <th scope="row"><%=hotel.getNombreHabitacion()%></th>
                        <td>Q<%=hotel.getPrecio()%>.00</td>
                        <td><%=hotel.getNoHabitaciones()%></td>                     
                        <td><img src="https://s3.amazonaws.com/arc-wordpress-client-uploads/infobae-wp/wp-content/uploads/2019/05/20152451/Mandarin-Oriental-Hong-Kong-3.jpg" width="50PX" height="50px"/></td>
                <td><a class="button type1"  href="sales.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>&&idHabitacion=<%=hotel.getIdHabitacion()%>">RESERVAR</a></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </section>
    </body>
</html>