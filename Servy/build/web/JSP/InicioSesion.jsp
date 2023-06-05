<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Imagen de encabezado -->
    <link rel="shortcut icon" href="../Image/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="../CSS/stylesheet-IniReg.css">
    <title>OblivionCORP</title>
</head>
<body>
        <header class="header">
            <div class="contenedor logo-nav-container">
                <a href="../index.html" class="logo">Oblivion Corp</a>
                <nav class="navigation">
                    <ul>
                        <li><a href="../index.html">Conocenos</a></li>
                        <li><a href="../HTML/Proyectito.html">Proyectos</a></li>
                        <li><a href="../JSP/InicioSesion.jsp">Inicio de Sesión</a></li>
                        <li><a href="../JSP/RegistrarUsuario.jsp">Registrate</a></li>
                    </ul>
                </nav>
            </div>
        </header>
        <div class="buscador">
            <div class="card-inicio">
                <a class="login">Log In</a>
            <form class="inicio" name="inicio" method="post" action="ValidarUsr.jsp">
                <div class="inputBox">
                    <input type="text" name="correo" required="required">
                    <span class="user">Correo</span>
                </div>
                <div class="inputBox">
                    <input type="password" name="contrasena" required="required">
                    <span>Contraseña</span>
                </div>
                
                <button class="enter" type="submit" value="Iniciar Sesion">Ingresar</button>
            </form>
                <a class="usuario" href="RegistrarUsuario.jsp"><u>Crear Cuenta</u></a>
            <% 
                String mensajeError = (String) request.getAttribute("mensajeError");
                if (mensajeError != null) {
            %>
                <script>
                    alert("<%= mensajeError %>");
                </script>
            <% } %>
            </div>
        </div>
</body>
</html>
