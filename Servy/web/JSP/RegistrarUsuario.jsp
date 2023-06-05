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
            <div class="card-registro">
                <a class="login">Sign Up</a>
                <form class="inicio" name="registro" method="post" action="RegistrarUsr.jsp" >
                    <div class="columnas">
                        <div class="columna-1">
                            <div class="inputBox">
                                <input type="text" name="nombre" required="required">
                                <span>Nombre</span>
                            </div>
                            <div class="inputBox">
                                <input type="text" name="apellido" required="required">
                                <span>Apellido</span>
                            </div>
                            <div class="inputBox">
                                <input type="number" name="edad" required="required">
                                <span>Edad</span>
                            </div>
                            <div class="inputBox">
                                <input type="number" name="telefono" required="required" pattern="[0-9]+" maxlength="10" minlength="10">
                                <span>Teléfono</span>
                            </div>
                            <div class="inputBox">
                                <input type="email" name="correo" required="required" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}">
                                <span>Correo</span>
                            </div>
                            <div class="inputBox">
                                <input type="password" name="contrasena" required="required">
                                <span>Contraseña</span>
                            </div>
                        </div>
                        <div class="columna-2">
                            
                            <div class="selecciones">
                                    <select name="genero" required>
                                        <option disabled selected> </option>
                                        <option value="Femenino">Femenino</option>
                                        <option value="Masculino">Masculino</option>
                                    </select>
                                    <span>Sexo</span>
                            </div >
                            <div class="selecciones">
                                <select name="localidad" required>
                                    <option disabled selected> </option>
                                    <option value="Alvaro Obregon">Alvaro Obregon</option>
                                    <option value="Azcapotzalco">Azcapotzalco</option>
                                    <option value="Benito Juarez">Benito Juarez</option>
                                    <option value="Coyoacan">Coyoacan</option>
                                    <option value="Cuajimalpa de Morelos">Cuajimalpa de Morelos</option>
                                    <option value="Cuauhtemoc">Cuauhtemoc</option>
                                    <option value="Gustavo A. Madero">Gustavo A. Madero</option>
                                    <option value="Iztacalco">Iztacalco</option>
                                    <option value="Iztapalapa">Iztapalapa</option>
                                    <option value="Magdalena Contreras">Magdalena Contreras</option>
                                    <option value="Miguel Hidalgo">Miguel Hidalgo</option>
                                    <option value="Milpa Alta">Milpa Alta</option>
                                    <option value="Tlahuac">Tlahuac</option>
                                    <option value="Tlalpan">Tlalpan</option>
                                    <option value="Venustiano Carranza">Venustiano Carranza</option>
                                    <option value="Xochimilco">Xochimilco</option>
                                </select>
                                <span>Localidad</span>
                            </div >
                            <div class="TIPOusuarios">
                                    <span>Usuario</span>
                                    <input type="radio" value="Comprador" name="usuarios" required><label for="Comprador">Comprador</label>
                                    <input type="radio" value="Vendedor" name="usuarios" required><label for="Vendedor">Vendedor</label>
                            </div>
                            <div class="descripcion">
                                <span>Descripción de Perfil:</span>
                                <textarea class="carta" name="descrip" placeholder="Ingresa una breve descripción de tu perfil" required></textarea>
                            </div>
                        </div>
                    </div>
                    <button class="enter" type="submit" value="Registrar Usuario">Crear Cuenta</button>
                </form>
            </div>
        </div>
</body>
</html>
