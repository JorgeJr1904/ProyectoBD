<%@page import="java.util.*"%><%@page contentType="text/html" pageEncoding="UTF-8"%><%@page import="DAO.loginDao"%><%@page import="constructores.login"%><!DOCTYPE html><html lang="es"><head>	<meta charset="UTF-8">	<meta name="viewport" content="width=device-width, initial-scale=1">	<title>PAGINA PRINCIPAL</title>	<link rel="stylesheet" href="css/normalize.css">	<link rel="stylesheet" href="css/sweetalert2.css">	<link rel="stylesheet" href="css/material.min.css">	<link rel="stylesheet" href="css/material-design-iconic-font.min.css">	<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">	<link rel="stylesheet" href="css/main.css">	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>	<script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>	<script src="js/material.min.js" ></script>	<script src="js/sweetalert2.min.js" ></script>	<script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>	<script src="js/main.js" ></script></head><body>	<!-- Notifications area -->	<section class="full-width container-notifications">		<div class="full-width container-notifications-bg btn-Notification"></div>	    <section class="NotificationArea">	        <div class="full-width text-center NotificationArea-title tittles">NOTIFICACIONES <i class="zmdi zmdi-close btn-Notification"></i></div>	        <a href="#" class="Notification" id="notifation-unread-1">	            <div class="Notification-icon"><i class="zmdi zmdi-accounts-alt bg-info"></i></div>	            <div class="Notification-text">	                <p>	                    <i class="zmdi zmdi-circle"></i>	                    <strong>NUEVO USUARIO</strong> 	                    <br>	                    <small>------</small>	                </p>	            </div>	        	<div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-1">REGISTRO</div> 	        </a>	        <a href="#" class="Notification" id="notifation-read-1">	            <div class="Notification-icon"><i class="zmdi zmdi-cloud-download bg-primary"></i></div>	            <div class="Notification-text">	                <p>	                    <i class="zmdi zmdi-circle-o"></i>	                    <strong>ACTUALIZACIONES</strong> 	                    <br>	                    <small>HACE 1 HORA</small>	                </p>	            </div>	            <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-1">ACTUALIZACIONES DE SISTEMA</div>	        </a>	        <a href="#" class="Notification" id="notifation-unread-2">	            <div class="Notification-icon"><i class="zmdi zmdi-upload bg-success"></i></div>	            <div class="Notification-text">	                <p>	                    <i class="zmdi zmdi-circle"></i>	                    <strong>SUBIR ACTUALIZACIONES</strong> 	                    <br>	                    <small>HACE 21 MINUTOS</small>	                </p>	            </div>	            <div class="mdl-tooltip mdl-tooltip--left" for="notifation-unread-2">ACTUALIZAR SISTEMA</div>	        </a> 	        <a href="#" class="Notification" id="notifation-read-2">	            <div class="Notification-icon"><i class="zmdi zmdi-mail-send bg-danger"></i></div>	            <div class="Notification-text">	                <p>	                    <i class="zmdi zmdi-circle-o"></i>	                    <strong>NUEVO CORREO</strong> 	                    <br>	                    <small>HACE 26 MINUTOS</small>	                </p>	            </div>	            <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-2">CORREOS</div>	        </a>	        <a href="#" class="Notification" id="notifation-read-3">	            <div class="Notification-icon"><i class="zmdi zmdi-folder bg-primary"></i></div>	            <div class="Notification-text">	                <p>	                    <i class="zmdi zmdi-circle-o"></i>	                    <strong>BORRADOR</strong> 	                    <br>	                    <small>HACE 3 DIAS</small>	                </p>	            </div>	            <div class="mdl-tooltip mdl-tooltip--left" for="notifation-read-3">RESIDUOS</div>	        </a>  	    </section>	</section>	<!-- navLateral -->	<section class="full-width navLateral">		<div class="full-width navLateral-bg btn-menu"></div>		<div class="full-width navLateral-body">			<div class="full-width navLateral-body-logo text-center tittles">				<i class="zmdi zmdi-close btn-menu"></i> INICIO 			</div>			<figure class="full-width navLateral-body-tittle-menu">				<div>					<img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">				</div>				<figcaption>					<span>                                              <%  loginDao LoginDao = new loginDao();                                                login Login = new login(request.getParameter("usuario"),request.getParameter("pass") );                                                String res = LoginDao.validacionRoles(Login);%>                                                <%=request.getParameter("usuario")%><br>						<small><%=res%></small>					</span>				</figcaption>			</figure>			<nav class="full-width">				<ul class="full-width list-unstyle menu-principal">					<li class="full-width">						<a href="home.jsp" class="full-width">							<div class="navLateral-body-cl">								<i class="zmdi zmdi-view-dashboard"></i>							</div>							<div class="navLateral-body-cr">								INICIO							</div>						</a>					</li>					<li class="full-width divider-menu-h"></li>					<li class="full-width">						<a href="#!" class="full-width btn-subMenu">							<div class="navLateral-body-cl">								<i class="zmdi zmdi-case"></i>							</div>							<div class="navLateral-body-cr">								ADMINISTRACION							</div>							<span class="zmdi zmdi-chevron-left"></span>						</a>						<ul class="full-width menu-principal sub-menu-options">							<li class="full-width">								<a href="company.jsp" class="full-width">									<div class="navLateral-body-cl">										<i class="zmdi zmdi-balance"></i>									</div>									<div class="navLateral-body-cr">										HABITACIONES									</div>								</a>							</li>							<li class="full-width">								<a href="providers.jsp" class="full-width">									<div class="navLateral-body-cl">										<i class="zmdi zmdi-truck"></i>									</div>									<div class="navLateral-body-cr">										LOCALIDADES									</div>								</a>							</li>							<li class="full-width">								<a href="payments.jsp" class="full-width">									<div class="navLateral-body-cl">										<i class="zmdi zmdi-card"></i>									</div>									<div class="navLateral-body-cr">										PAGOS									</div>								</a>							</li>							<li class="full-width">								<a href="categories.jsp" class="full-width">									<div class="navLateral-body-cl">										<i class="zmdi zmdi-label"></i>									</div>									<div class="navLateral-body-cr">										CATEGORIAS DE HABITACION									</div>								</a>							</li>						</ul>					</li>					<li class="full-width divider-menu-h"></li>					<li class="full-width">						<a href="#!" class="full-width btn-subMenu">							<div class="navLateral-body-cl">								<i class="zmdi zmdi-face"></i>							</div>							<div class="navLateral-body-cr">								USUARIOS							</div>							<span class="zmdi zmdi-chevron-left"></span>						</a>						<ul class="full-width menu-principal sub-menu-options">							<li class="full-width">								<a href="admin.jsp" class="full-width">									<div class="navLateral-body-cl">										<i class="zmdi zmdi-account"></i>									</div>									<div class="navLateral-body-cr">										ADMINISTRADORES									</div>								</a>							</li>							<li class="full-width">								<a href="client.jsp" class="full-width">									<div class="navLateral-body-cl">										<i class="zmdi zmdi-accounts"></i>									</div>									<div class="navLateral-body-cr">										CLIENTES									</div>								</a>							</li>						</ul>					</li>					<li class="full-width divider-menu-h"></li>					<li class="full-width">						<a href="products.jsp" class="full-width">							<div class="navLateral-body-cl">								<i class="zmdi zmdi-washing-machine"></i>							</div>							<div class="navLateral-body-cr">								HABITACIONES							</div>						</a>					</li>					<li class="full-width divider-menu-h"></li>					<li class="full-width">						<a href="sales.jsp" class="full-width">							<div class="navLateral-body-cl">								<i class="zmdi zmdi-shopping-cart"></i>							</div>							<div class="navLateral-body-cr">								DISPONIBILIDAD							</div>						</a>					</li>					<li class="full-width divider-menu-h"></li>					<li class="full-width">						<a href="inventory.jsp" class="full-width">							<div class="navLateral-body-cl">								<i class="zmdi zmdi-store"></i>							</div>							<div class="navLateral-body-cr">								INVENTARIO							</div>						</a>					</li>					<li class="full-width divider-menu-h"></li>					<li class="full-width">						<a href="#!" class="full-width btn-subMenu">							<div class="navLateral-body-cl">								<i class="zmdi zmdi-wrench"></i>							</div>							<div class="navLateral-body-cr">								OPCIONES							</div>							<span class="zmdi zmdi-chevron-left"></span>						</a>						<ul class="full-width menu-principal sub-menu-options">							<li class="full-width">								<a href="#!" class="full-width">									<div class="navLateral-body-cl">										<i class="zmdi zmdi-widgets"></i>									</div>									<div class="navLateral-body-cr">										OPCION 1									</div>								</a>							</li>							<li class="full-width">								<a href="#!" class="full-width">									<div class="navLateral-body-cl">										<i class="zmdi zmdi-widgets"></i>									</div>									<div class="navLateral-body-cr">										OPCION 2									</div>								</a>							</li>						</ul>					</li>				</ul>			</nav>		</div>	</section>	<!-- pageContent -->	<section class="full-width pageContent">		<!-- navBar -->		<div class="full-width navBar">			<div class="full-width navBar-options">				<i class="zmdi zmdi-swap btn-menu" id="btn-menu"></i>					<div class="mdl-tooltip" for="btn-menu">MINIMIZAR MENU</div>				<nav class="navBar-options-list">					<ul class="list-unstyle">						<li class="btn-Notification" id="notifications">							<i class="zmdi zmdi-notifications"></i>							<div class="mdl-tooltip" for="notifications">NOTIFICACIONES</div>						</li>						<li class="btn-exit" id="btn-exit">							<i class="zmdi zmdi-power"></i>							<div class="mdl-tooltip" for="btn-exit">CUENTA</div>						</li>						<li class="text-condensedLight noLink" ><small><%=request.getParameter("usuario")%></small></li>						<li class="noLink">							<figure>								<img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">							</figure>						</li>					</ul>				</nav>			</div>		</div>		<section class="full-width text-center" style="padding: 40px 0;">			<h3 class="text-center tittles">INFORMACION DE HOTEL</h3>			<!-- Tiles -->			<article class="full-width tile">				<div class="tile-text">					<span class="text-condensedLight">						<br>						<small>ADMINISTRADORES</small>					</span>				</div>				<i class="zmdi zmdi-account tile-icon"></i>			</article>			<article class="full-width tile">				<div class="tile-text">					<span class="text-condensedLight">						<br>						<small>CLIENTES</small>					</span>				</div>				<i class="zmdi zmdi-accounts tile-icon"></i>			</article>			<article class="full-width tile">				<div class="tile-text">					<span class="text-condensedLight">						<br>						<small>LOCALIDADES</small>					</span>				</div>				<i class="zmdi zmdi-truck tile-icon"></i>			</article>			<article class="full-width tile">				<div class="tile-text">					<span class="text-condensedLight">						<br>						<small>CATEGORIAS DE HABITACION</small>					</span>				</div>				<i class="zmdi zmdi-label tile-icon"></i>			</article>			<article class="full-width tile">				<div class="tile-text">					<span class="text-condensedLight">						<br>						<small>HABITACIONES</small>					</span>				</div>				<i class="zmdi zmdi-washing-machine tile-icon"></i>			</article>			<article class="full-width tile">				<div class="tile-text">					<span class="text-condensedLight">						<br>						<small>DISPONIBILIDAD</small>					</span>				</div>				<i class="zmdi zmdi-shopping-cart tile-icon"></i>			</article>		</section>		<section class="full-width" style="margin: 30px 0;">			<h3 class="text-center tittles">HISTORIA DE HOTEL</h3>			<!-- TimeLine -->			<div id="timeline-c" class="timeline-c">				<div class="timeline-c-box">	                <div class="timeline-c-box-icon bg-info">	                    <i class="zmdi zmdi-twitter"></i>	                </div>	                <div class="timeline-c-box-content">	                    <h4 class="text-center text-condensedLight">Tittle timeline</h4>	                    <p class="text-center">	                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta nobis rerum iure nostrum dolor. Quo totam possimus, ex, sapiente rerum vel maxime fugiat, ipsam blanditiis veniam, suscipit labore excepturi veritatis.	                    </p>	                    <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>05-04-2016</span>	                </div>	            </div>				<div class="timeline-c-box">	                <div class="timeline-c-box-icon bg-success">	                    <i class="zmdi zmdi-whatsapp"></i>	                </div>	                <div class="timeline-c-box-content">	                    <h4 class="text-center text-condensedLight">Tittle timeline</h4>	                    <p class="text-center">	                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta nobis rerum iure nostrum dolor. Quo totam possimus, ex, sapiente rerum vel maxime fugiat, ipsam blanditiis veniam, suscipit labore excepturi veritatis.	                    </p>	                    <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>06-04-2016</span>	                </div>	            </div>	            <div class="timeline-c-box">	                <div class="timeline-c-box-icon bg-primary">	                    <i class="zmdi zmdi-facebook"></i>	                </div>	                <div class="timeline-c-box-content">	                    <h4 class="text-center text-condensedLight">Tittle timeline</h4>	                    <p class="text-center">	                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta nobis rerum iure nostrum dolor. Quo totam possimus, ex, sapiente rerum vel maxime fugiat, ipsam blanditiis veniam, suscipit labore excepturi veritatis.	                    </p>	                    <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>07-04-2016</span>	                </div>	            </div>	            <div class="timeline-c-box">	                <div class="timeline-c-box-icon bg-danger">	                    <i class="zmdi zmdi-youtube"></i>	                </div>	                <div class="timeline-c-box-content">	                    <h4 class="text-center text-condensedLight">Tittle timeline</h4>	                    <p class="text-center">	                    	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta nobis rerum iure nostrum dolor. Quo totam possimus, ex, sapiente rerum vel maxime fugiat, ipsam blanditiis veniam, suscipit labore excepturi veritatis.	                    </p>	                    <span class="timeline-date"><i class="zmdi zmdi-calendar-note zmdi-hc-fw"></i>08-04-2016</span>	                </div>	            </div>			</div>		</section>	</section></body></html>