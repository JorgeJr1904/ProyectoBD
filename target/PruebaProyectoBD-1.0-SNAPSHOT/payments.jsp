<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Payments</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/sweetalert2.css">
	<link rel="stylesheet" href="css/material.min.css">
	<link rel="stylesheet" href="css/material-design-iconic-font.min.css">
	<link rel="stylesheet" href="css/jquery.mCustomScrollbar.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.2.min.js"><\/script>')</script>
	<script src="js/material.min.js" ></script>
	<script src="js/sweetalert2.min.js" ></script>
	<script src="js/jquery.mCustomScrollbar.concat.min.js" ></script>
	<script src="js/main.js" ></script>
</head>
<body>
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
                    <i class="zmdi zmdi-close btn-menu"></i> Inventory 
                </div>
                <figure class="full-width navLateral-body-tittle-menu">
                    <div>
                        <img src="assets/img/avatar-male.png" alt="Avatar" class="img-responsive">
                    </div>
                    <figcaption>
                        <span>
                            <%=request.getParameter("usuario")%><br>
                            <small><%=request.getParameter("rol")%></small>
                        </span>
                    </figcaption>
                </figure>
                <nav class="full-width">
                    <ul class="full-width list-unstyle menu-principal">
                        <li class="full-width">
                            <a href="home.jsp?usuario=<%=request.getParameter("usuario")%>
                               &&rol=<%=request.getParameter("rol")%>" class="full-width">
                                <div class="navLateral-body-cl">
                                    <i class="zmdi zmdi-view-dashboard"></i>
                                </div>
                                <div class="navLateral-body-cr">
                                    HOME
                                </div>
                            </a>
                        </li>
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
                                    <a href="hoteles.jsp?usuario=<%=request.getParameter("usuario")%>
                                       &&rol=<%=request.getParameter("rol")%>" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-balance"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            AGREGAR HOTEL
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="payments.jsp?usuario=<%=request.getParameter("usuario")%>
                                       &&rol=<%=request.getParameter("rol")%>" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-card"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            AGREGAR TIPO DE PAGO
                                        </div>
                                    </a>
                                </li>
                            </ul>
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
                                       &&rol=<%=request.getParameter("rol")%>" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-account"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            CREAR USUARIO
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="roles.jsp?usuario=<%=request.getParameter("usuario")%>
                                       &&rol=<%=request.getParameter("rol")%>" class="full-width">
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
                        <li class="full-width divider-menu-h"></li>
                        <li class="full-width">
                            <a href="hoteles.jsp?usuario=<%=request.getParameter("usuario")%>
                                       &&rol=<%=request.getParameter("rol")%>" class="full-width">
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
                                       &&rol=<%=request.getParameter("rol")%>" class="full-width">
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
                            <a href="inventory.jsp?usuario=<%=request.getParameter("usuario")%>
                                       &&rol=<%=request.getParameter("rol")%>" class="full-width">
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
				<i class="zmdi zmdi-card"></i>
			</div>
			<div class="full-width header-well-text">
				<p class="text-condensedLight">
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Unde aut nulla accusantium minus corporis accusamus fuga harum natus molestias necessitatibus.
				</p>
			</div>
		</section>
		<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
			<div class="mdl-tabs__tab-bar">
				<a href="#tabNewPayment" class="mdl-tabs__tab is-active">NEW</a>
				<a href="#tabListPayment" class="mdl-tabs__tab">LIST</a>
			</div>
			<div class="mdl-tabs__panel is-active" id="tabNewPayment">
				<div class="mdl-grid">
					<div class="mdl-cell mdl-cell--12-col">
						<div class="full-width panel mdl-shadow--2dp">
							<div class="full-width panel-tittle bg-primary text-center tittles">
								New Payment
							</div>
							<div class="full-width panel-content">
								<form>
									<div class="mdl-grid">
										<div class="mdl-cell mdl-cell--12-col">
									        <legend class="text-condensedLight"><i class="zmdi zmdi-border-color"></i> &nbsp; DATA PAYMENT</legend><br>
									    </div>
									    <div class="mdl-cell mdl-cell--6-col mdl-cell--8-col-tablet">
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
												<input class="mdl-textfield__input" type="text" pattern="-?[A-Za-z0-9Ã¡Ã©Ã­Ã³ÃºÃÃÃÃÃ ]*(\.[0-9]+)?" id="NamePayment">
												<label class="mdl-textfield__label" for="NamePayment">Name</label>
												<span class="mdl-textfield__error">Invalid name</span>
											</div>
									    </div>
									    <div class="mdl-cell mdl-cell--6-col mdl-cell--8-col-tablet">
											<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
												<input class="mdl-textfield__input" type="text" pattern="-?[A-Za-zÃ¡Ã©Ã­Ã³ÃºÃÃÃÃÃ ]*(\.[0-9]+)?" id="descriptionPayment">
												<label class="mdl-textfield__label" for="descriptionPayment">Description</label>
												<span class="mdl-textfield__error">Invalid description</span>
											</div>
									    </div>
									</div>
									<p class="text-center">
										<button class="mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored bg-primary" id="btn-addPayment">
											<i class="zmdi zmdi-plus"></i>
										</button>
										<div class="mdl-tooltip" for="btn-addPayment">Add payment</div>
									</p>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="mdl-tabs__panel" id="tabListPayment">
				<div class="mdl-grid">
					<div class="mdl-cell mdl-cell--4-col-phone mdl-cell--8-col-tablet mdl-cell--8-col-desktop mdl-cell--2-offset-desktop">
						<div class="full-width panel mdl-shadow--2dp">
							<div class="full-width panel-tittle bg-success text-center tittles">
								List Payments
							</div>
							<div class="full-width panel-content">
								<form action="#">
									<div class="mdl-textfield mdl-js-textfield mdl-textfield--expandable">
										<label class="mdl-button mdl-js-button mdl-button--icon" for="searchPayment">
											<i class="zmdi zmdi-search"></i>
										</label>
										<div class="mdl-textfield__expandable-holder">
											<input class="mdl-textfield__input" type="text" id="searchPayment">
											<label class="mdl-textfield__label"></label>
										</div>
									</div>
								</form>
								<div class="mdl-list">
									<div class="mdl-list__item mdl-list__item--two-line">
										<span class="mdl-list__item-primary-content">
											<i class="zmdi zmdi-card mdl-list__item-avatar"></i>
											<span>1. Payment method</span>
											<span class="mdl-list__item-sub-title">Sub tittle</span>
										</span>
										<a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
									</div>
									<li class="full-width divider-menu-h"></li>
									<div class="mdl-list__item mdl-list__item--two-line">
										<span class="mdl-list__item-primary-content">
											<i class="zmdi zmdi-card mdl-list__item-avatar"></i>
											<span>2. Payment method</span>
											<span class="mdl-list__item-sub-title">Sub tittle</span>
										</span>
										<a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
									</div>
									<li class="full-width divider-menu-h"></li>
									<div class="mdl-list__item mdl-list__item--two-line">
										<span class="mdl-list__item-primary-content">
											<i class="zmdi zmdi-card mdl-list__item-avatar"></i>
											<span>3. Payment method</span>
											<span class="mdl-list__item-sub-title">Sub tittle</span>
										</span>
										<a class="mdl-list__item-secondary-action" href="#!"><i class="zmdi zmdi-more"></i></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>