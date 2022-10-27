<%-- 
    Document   : reservaciones
    Created on : 23/10/2022, 20:01:53
    Author     : JorgeJr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html" charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/estu.css" >
    
        <title>RESERVACIONES</title>
    </head>
    <body>
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

                    <form>
                        <div class="form-row mb-2">
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">HABITACIONES<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="NUM.HABITACIONES">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">FECHA DE RESERVACION<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="**/**/****">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">FECHA DE INGRESO<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="**/**/****">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">FECHA DE SALIDA<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="**/**/****">
                            </div>
                             <p>----------------------------------------------------------------------------------</p>
                             <h2>DATOS DE PERSONA</h2>
                             <p>----------------------------------------------------------------------------------</p>
                             <div class="form-group col-md-6">
                                <label class="font-weight-bold">NOMBRES<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="COMPLETOS">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">APELLIDOS<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="COMPLETOS">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">NUMERO<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="CELULAR O CASA">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">TIPO DE PAGO<span class="text-danger">*</span></label>
                                <input type="text" class="form-control" placeholder="EFECTIVO O TARJETA">
                            </div>
                        </div>
                       
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">HABITACION<span class="text-danger">*</span></label>
                            <input type="email" class="form-control" placeholder="TIPO DE HABITACION">
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">ESTADO<span class="text-danger">*</span></label>
                            <input type="password" class="form-control" placeholder="CIUDAD">
                        </div>
                        <button class="btn btn-primary width-100">RESERVAR</button>
                    </form>
                </div>
           </div>
       </div>
   </section>
        <%
            String usuario = request.getParameter("usuario");
            String rol = request.getParameter("rol");
            String idHabitacion = request.getParameter("idHabitacion");
        %>
    </body>
</html>
