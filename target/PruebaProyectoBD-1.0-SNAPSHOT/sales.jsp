<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sales</title>
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
        <link rel="stylesheet" href="css/estu.css" >
    </head>
    <body>
        <%String rol = request.getParameter("rol");
            String Usuario = request.getParameter("usuario");
            String idHabitacion = request.getParameter("idHabitacion");%>
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
                            <a href="home.jsp?usuario=<%=Usuario%>&&rol=<%=rol%>" class="full-width">
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
                        <%if ("ADMIN".equals(request.getParameter("rol")) || rol == "ADMIN") {%>
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
                                    <a href="ConsultaClienteFecha.jsp" class="full-width">
                                        <div class="navLateral-body-cl">
                                            <i class="zmdi zmdi-widgets"></i>
                                        </div>
                                        <div class="navLateral-body-cr">
                                            INVENTARIO 1
                                        </div>
                                    </a>
                                </li>
                                <li class="full-width">
                                    <a href="ConsultaFechaHabitacion.jsp" class="full-width">
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
                                <%}%>
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
                    <div class="mdl-tooltip" for="btn-menu">OCULTAR MENU</div>
                    <nav class="navBar-options-list">
                        <ul class="list-unstyle">
                            <li class="btn-Notification" id="notifications">
                                <i class="zmdi zmdi-notifications"></i>
                                <div class="mdl-tooltip" for="notifications">NOTIFICACIONES</div>
                            </li>
                            <li class="btn-exit" id="btn-exit">
                                <i class="zmdi zmdi-power"></i>
                                <div class="mdl-tooltip" for="btn-exit">CERRAR SECION</div>
                            </li>
                            <li class="text-condensedLight noLink" ><small><%=request.getParameter("usuario")%></small></li>
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
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>
                <div class="full-width header-well-text">
                    <p class="text-condensedLight">
                       EN ESTE APARTADO PODRA RESERVAR SU HABITACION     </p>
                </div>
                </tbody>
            </section>
            <section class="contact-box">
                <div class="row no-gutters bg-dark">
                    <div class="col-xl-5 col-lg-12 register-bg">
                        <div class="position-absolute testiomonial p-4">
                            <h3 class="font-weight-bold text-light">RESERVACION HOTEL</h3>
                            <p class="lead text-light">REVERSA YA DESDE LA COMODIDAD DE TU CASA</p>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-12 d-flex">
                        <div class="container align-self-center p-6">
                            <h1 class="font-weight-bold mb-3">HAS TU RESERVACION</h1>
                            <p class="text-muted mb-5">---------------------------------------------------------------------------------</p>

                            <form method="POST" action="validacionReservar.jsp">
                                <div class="form-row mb-2">
                                    
                                    <input hidden="true" type="text" class="form-control" name="idHabitacion" value="<%=idHabitacion%>">
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">HABITACIONES<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" name="noHabitaciones">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">FECHA DE INGRESO<span class="text-danger">*</span></label>
                                        <input type="date" class="form-control" placeholder="****/**/**" name="fechaIngreso">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">FECHA DE SALIDA<span class="text-danger">*</span></label>
                                        <input type="date" class="form-control" placeholder="****/**/**" name="fechaSalida">
                                    </div>
                                    <p>----------------------------------------------------------------------------------</p>
                                    <h2>DATOS DE PERSONA</h2>
                                    <p>----------------------------------------------------------------------------------</p>
                                    <div class="form-group col-md-6">
                                        <input hidden="true" type="text" class="form-control" placeholder="COMPLETOS" name="usuario" value="<%=Usuario%>">
                                        <input hidden="true" type="text" class="form-control" placeholder="COMPLETOS" name="rol" value="<%=rol%>">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">NOMBRES<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" placeholder="COMPLETOS" name="nombrePersona">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">APELLIDOS<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" placeholder="COMPLETOS" name="apellidoPersona">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">EDAD<span class="text-danger">*</span></label>
                                        <input type="number" class="form-control" placeholder="COMPLETOS" name="edadPersona">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">SEXO<span class="text-danger">*</span></label>
                                        <select class="form-control" name="sexo">
                                            <option value="M" selected>Mujer</option>
                                            <option value="H">Hombre</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">NUMERO TELEFONICO<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" placeholder="CELULAR O CASA" name="numeroTelefono">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">TIPO IDENTIFICACION<span class="text-danger">*</span></label>
                                        <select class="form-control" name="tipoIdentificacion">
                                            <option value="1" selected>DPI</option>
                                            <option value="2">PASAPORTE</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label class="font-weight-bold">NO.<span class="text-danger">*</span></label>
                                        <input type="text" class="form-control" placeholder="NO. DE IDENTIFICACION" name="numeroIdentificacion">
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <label class="font-weight-bold">DIRECCION<span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" placeholder="TIPO DE HABITACION" name="direccionPersona">
                                </div>
                                <div class="form-group mb-3">
                                    <label class="font-weight-bold">PAIS<span class="text-danger">*</span></label>
                                    <select class="form-control" name="pais">
                                        <option value="AF">Afganistán</option>
                                        <option value="AL">Albania</option>
                                        <option value="DE">Alemania</option>
                                        <option value="AD">Andorra</option>
                                        <option value="AO">Angola</option>
                                        <option value="AI">Anguilla</option>
                                        <option value="AQ">Antártida</option>
                                        <option value="AG">Antigua y Barbuda</option>
                                        <option value="AN">Antillas Holandesas</option>
                                        <option value="SA">Arabia Saudí</option>
                                        <option value="DZ">Argelia</option>
                                        <option value="AR">Argentina</option>
                                        <option value="AM">Armenia</option>
                                        <option value="AW">Aruba</option>
                                        <option value="AU">Australia</option>
                                        <option value="AT">Austria</option>
                                        <option value="AZ">Azerbaiyán</option>
                                        <option value="BS">Bahamas</option>
                                        <option value="BH">Bahrein</option>
                                        <option value="BD">Bangladesh</option>
                                        <option value="BB">Barbados</option>
                                        <option value="BE">Bélgica</option>
                                        <option value="BZ">Belice</option>
                                        <option value="BJ">Benin</option>
                                        <option value="BM">Bermudas</option>
                                        <option value="BY">Bielorrusia</option>
                                        <option value="MM">Birmania</option>
                                        <option value="BO">Bolivia</option>
                                        <option value="BA">Bosnia y Herzegovina</option>
                                        <option value="BW">Botswana</option>
                                        <option value="BR">Brasil</option>
                                        <option value="BN">Brunei</option>
                                        <option value="BG">Bulgaria</option>
                                        <option value="BF">Burkina Faso</option>
                                        <option value="BI">Burundi</option>
                                        <option value="BT">Bután</option>
                                        <option value="CV">Cabo Verde</option>
                                        <option value="KH">Camboya</option>
                                        <option value="CM">Camerún</option>
                                        <option value="CA">Canadá</option>
                                        <option value="TD">Chad</option>
                                        <option value="CL">Chile</option>
                                        <option value="CN">China</option>
                                        <option value="CY">Chipre</option>
                                        <option value="VA">Ciudad del Vaticano (Santa Sede)</option>
                                        <option value="CO">Colombia</option>
                                        <option value="KM">Comores</option>
                                        <option value="CG">Congo</option>
                                        <option value="CD">Congo, República Democrática del</option>
                                        <option value="KR">Corea</option>
                                        <option value="KP">Corea del Norte</option>
                                        <option value="CI">Costa de Marfíl</option>
                                        <option value="CR">Costa Rica</option>
                                        <option value="HR">Croacia (Hrvatska)</option>
                                        <option value="CU">Cuba</option>
                                        <option value="DK">Dinamarca</option>
                                        <option value="DJ">Djibouti</option>
                                        <option value="DM">Dominica</option>
                                        <option value="EC">Ecuador</option>
                                        <option value="EG">Egipto</option>
                                        <option value="SV">El Salvador</option>
                                        <option value="AE">Emiratos Árabes Unidos</option>
                                        <option value="ER">Eritrea</option>
                                        <option value="SI">Eslovenia</option>
                                        <option value="ES">España</option>
                                        <option value="US">Estados Unidos</option>
                                        <option value="EE">Estonia</option>
                                        <option value="ET">Etiopía</option>
                                        <option value="FJ">Fiji</option>
                                        <option value="PH">Filipinas</option>
                                        <option value="FI">Finlandia</option>
                                        <option value="FR">Francia</option>
                                        <option value="GA">Gabón</option>
                                        <option value="GM">Gambia</option>
                                        <option value="GE">Georgia</option>
                                        <option value="GH">Ghana</option>
                                        <option value="GI">Gibraltar</option>
                                        <option value="GD">Granada</option>
                                        <option value="GR">Grecia</option>
                                        <option value="GL">Groenlandia</option>
                                        <option value="GP">Guadalupe</option>
                                        <option value="GU">Guam</option>
                                        <option value="GT" selected>Guatemala</option>
                                        <option value="GY">Guayana</option>
                                        <option value="GF">Guayana Francesa</option>
                                        <option value="GN">Guinea</option>
                                        <option value="GQ">Guinea Ecuatorial</option>
                                        <option value="GW">Guinea-Bissau</option>
                                        <option value="HT">Haití</option>
                                        <option value="HN">Honduras</option>
                                        <option value="HU">Hungría</option>
                                        <option value="IN">India</option>
                                        <option value="ID">Indonesia</option>
                                        <option value="IQ">Irak</option>
                                        <option value="IR">Irán</option>
                                        <option value="IE">Irlanda</option>
                                        <option value="BV">Isla Bouvet</option>
                                        <option value="CX">Isla de Christmas</option>
                                        <option value="IS">Islandia</option>
                                        <option value="KY">Islas Caimán</option>
                                        <option value="CK">Islas Cook</option>
                                        <option value="CC">Islas de Cocos o Keeling</option>
                                        <option value="FO">Islas Faroe</option>
                                        <option value="HM">Islas Heard y McDonald</option>
                                        <option value="FK">Islas Malvinas</option>
                                        <option value="MP">Islas Marianas del Norte</option>
                                        <option value="MH">Islas Marshall</option>
                                        <option value="UM">Islas menores de Estados Unidos</option>
                                        <option value="PW">Islas Palau</option>
                                        <option value="SB">Islas Salomón</option>
                                        <option value="SJ">Islas Svalbard y Jan Mayen</option>
                                        <option value="TK">Islas Tokelau</option>
                                        <option value="TC">Islas Turks y Caicos</option>
                                        <option value="VI">Islas Vírgenes (EEUU)</option>
                                        <option value="VG">Islas Vírgenes (Reino Unido)</option>
                                        <option value="WF">Islas Wallis y Futuna</option>
                                        <option value="IL">Israel</option>
                                        <option value="IT">Italia</option>
                                        <option value="JM">Jamaica</option>
                                        <option value="JP">Japón</option>
                                        <option value="JO">Jordania</option>
                                        <option value="KZ">Kazajistán</option>
                                        <option value="KE">Kenia</option>
                                        <option value="KG">Kirguizistán</option>
                                        <option value="KI">Kiribati</option>
                                        <option value="KW">Kuwait</option>
                                        <option value="LA">Laos</option>
                                        <option value="LS">Lesotho</option>
                                        <option value="LV">Letonia</option>
                                        <option value="LB">Líbano</option>
                                        <option value="LR">Liberia</option>
                                        <option value="LY">Libia</option>
                                        <option value="LI">Liechtenstein</option>
                                        <option value="LT">Lituania</option>
                                        <option value="LU">Luxemburgo</option>
                                        <option value="MK">Macedonia, Ex-República Yugoslava de</option>
                                        <option value="MG">Madagascar</option>
                                        <option value="MY">Malasia</option>
                                        <option value="MW">Malawi</option>
                                        <option value="MV">Maldivas</option>
                                        <option value="ML">Malí</option>
                                        <option value="MT">Malta</option>
                                        <option value="MA">Marruecos</option>
                                        <option value="MQ">Martinica</option>
                                        <option value="MU">Mauricio</option>
                                        <option value="MR">Mauritania</option>
                                        <option value="YT">Mayotte</option>
                                        <option value="MX">México</option>
                                        <option value="FM">Micronesia</option>
                                        <option value="MD">Moldavia</option>
                                        <option value="MC">Mónaco</option>
                                        <option value="MN">Mongolia</option>
                                        <option value="MS">Montserrat</option>
                                        <option value="MZ">Mozambique</option>
                                        <option value="NA">Namibia</option>
                                        <option value="NR">Nauru</option>
                                        <option value="NP">Nepal</option>
                                        <option value="NI">Nicaragua</option>
                                        <option value="NE">Níger</option>
                                        <option value="NG">Nigeria</option>
                                        <option value="NU">Niue</option>
                                        <option value="NF">Norfolk</option>
                                        <option value="NO">Noruega</option>
                                        <option value="NC">Nueva Caledonia</option>
                                        <option value="NZ">Nueva Zelanda</option>
                                        <option value="OM">Omán</option>
                                        <option value="NL">Países Bajos</option>
                                        <option value="PA">Panamá</option>
                                        <option value="PG">Papúa Nueva Guinea</option>
                                        <option value="PK">Paquistán</option>
                                        <option value="PY">Paraguay</option>
                                        <option value="PE">Perú</option>
                                        <option value="PN">Pitcairn</option>
                                        <option value="PF">Polinesia Francesa</option>
                                        <option value="PL">Polonia</option>
                                        <option value="PT">Portugal</option>
                                        <option value="PR">Puerto Rico</option>
                                        <option value="QA">Qatar</option>
                                        <option value="UK">Reino Unido</option>
                                        <option value="CF">República Centroafricana</option>
                                        <option value="CZ">República Checa</option>
                                        <option value="ZA">República de Sudáfrica</option>
                                        <option value="DO">República Dominicana</option>
                                        <option value="SK">República Eslovaca</option>
                                        <option value="RE">Reunión</option>
                                        <option value="RW">Ruanda</option>
                                        <option value="RO">Rumania</option>
                                        <option value="RU">Rusia</option>
                                        <option value="EH">Sahara Occidental</option>
                                        <option value="KN">Saint Kitts y Nevis</option>
                                        <option value="WS">Samoa</option>
                                        <option value="AS">Samoa Americana</option>
                                        <option value="SM">San Marino</option>
                                        <option value="VC">San Vicente y Granadinas</option>
                                        <option value="SH">Santa Helena</option>
                                        <option value="LC">Santa Lucía</option>
                                        <option value="ST">Santo Tomé y Príncipe</option>
                                        <option value="SN">Senegal</option>
                                        <option value="SC">Seychelles</option>
                                        <option value="SL">Sierra Leona</option>
                                        <option value="SG">Singapur</option>
                                        <option value="SY">Siria</option>
                                        <option value="SO">Somalia</option>
                                        <option value="LK">Sri Lanka</option>
                                        <option value="PM">St Pierre y Miquelon</option>
                                        <option value="SZ">Suazilandia</option>
                                        <option value="SD">Sudán</option>
                                        <option value="SE">Suecia</option>
                                        <option value="CH">Suiza</option>
                                        <option value="SR">Surinam</option>
                                        <option value="TH">Tailandia</option>
                                        <option value="TW">Taiwán</option>
                                        <option value="TZ">Tanzania</option>
                                        <option value="TJ">Tayikistán</option>
                                        <option value="TF">Territorios franceses del Sur</option>
                                        <option value="TP">Timor Oriental</option>
                                        <option value="TG">Togo</option>
                                        <option value="TO">Tonga</option>
                                        <option value="TT">Trinidad y Tobago</option>
                                        <option value="TN">Túnez</option>
                                        <option value="TM">Turkmenistán</option>
                                        <option value="TR">Turquía</option>
                                        <option value="TV">Tuvalu</option>
                                        <option value="UA">Ucrania</option>
                                        <option value="UG">Uganda</option>
                                        <option value="UY">Uruguay</option>
                                        <option value="UZ">Uzbekistán</option>
                                        <option value="VU">Vanuatu</option>
                                        <option value="VE">Venezuela</option>
                                        <option value="VN">Vietnam</option>
                                        <option value="YE">Yemen</option>
                                        <option value="YU">Yugoslavia</option>
                                        <option value="ZM">Zambia</option>
                                        <option value="ZW">Zimbabue</option>
                                    </select>
                                </div>
                                <p>----------------------------------------------------------------------------------</p>
                                    <h2>METODOS DE PAGO</h2>
                                    <p>----------------------------------------------------------------------------------</p>
                                    <div class="form-group col-md-6">
                                        <select class="form-control" name="tipoPago">
                                            <option value="1" selected>EFECTIVO</option>
                                            <option value="2">TARJETA</option>
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label><input type="checkbox" name="btn_Facturacion" value="facturacionAutomatica"> Deseo Facturar con los mismos Datos Ingresados</label>
                                    </div>
                                    <br><button class="btn btn-primary width-100" name="btn_reservar" value="reservar">RESERVAR</button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>               
    </body>
</html>