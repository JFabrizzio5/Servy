<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>

<%! int Id_Vende = 0;%>
<%! String Nombre_Vende = null;%>
<%! String Apellido_Vende = null;%>
<%! int Edad_Vende = 0;%>
<%! String Tel_Vende = null;%>
<%! String Correo_Vende = null;%>
<%! String Sexo_Vende = null;%>
<%! String Local_Vende = null;%>
<%! String Categ_Vende = null;%>
<%! String Descrip_Vende = null;%>
<%! String Foto_Vende = null;%>
<%! int Calif_Vende = 0;%>

<%!Statement statement = null;%>
<%!ResultSet resultados = null;%>
<%!Connection conexion = null;%>
<%!String sql = null;%>

<%
    Class.forName("com.mysql.jdbc.Driver").newInstance ();
    String url = "jdbc:mysql://localhost:3308/EverythingWorks";
    String usuario = "root";
    String password = "n0m3l0";
    conexion = DriverManager.getConnection(url, usuario, password);
    statement = conexion.createStatement();
    sql = "SELECT * FROM Vendedor WHERE Cal_Vend = 5 ";
    resultados = statement.executeQuery(sql);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Imagen de encabezado -->
        <link rel="shortcut icon" href="../Image/everySF-Sletras.png" type="image/x-icon">
        <link rel="stylesheet" href="../CSS/stylesheet-Intereses.css">
        <title>Intereses</title>
<%--
        <script>
            const slider = document.querySelector('.slider');
            const slides = document.querySelectorAll('.perfil');

            slider.append(slides[0].cloneNode(true));
            slider.prepend(slides[slides.length - 1].cloneNode(true));
        </script>
--%>
    </head>
    <body>
        <nav class="nav">
            <div class="contenedor logo-nav-container">
                <a href="../index.html" class="logo">Oblivion Corp</a>
                <nav class="navigation">
                    <ul>
                        <li><a href="Intereses.jsp">Intereses</a></li>
                        <li><a href="Perfil.jsp">Perfil</a></li>
                        <li><a href="CerrarSesion.jsp">Cerrar Sesión</a></li>
                    </ul>
                </nav>
            </div>
        </nav>
        <header class="desplazamiento">
            <br>
            <center><h1>Perfiles que te pueden interesar</h1></center>
            <br>
            <section class="slides">
<%--            <div class="slider">
                <section class="slides">   --%>
<%
    while (resultados.next()){
        Id_Vende = resultados.getInt("Id_Vend");
        Nombre_Vende = resultados.getString("Nom_Vend");
        Apellido_Vende = resultados.getString("Apellido_Vend");
        Edad_Vende = resultados.getInt("Edad_Vend");
        Tel_Vende = resultados.getString("Tel_Vend");
        Correo_Vende = resultados.getString("Correo_Vend");
        Sexo_Vende = resultados.getString("Sexo_Vend");
        Local_Vende = resultados.getString("Local_Vend");
        Categ_Vende = resultados.getString("Cate_Vend");
        Descrip_Vende = resultados.getString("Descr_Vend");
        Foto_Vende = resultados.getString("Foto_Vend");
        Calif_Vende = resultados.getInt("Cal_Vend");
                out.println("<article class='perfil'>");
                    out.println("<div class='task' draggable='true'>");
                        out.println("<div class='tags'>");
                            out.println("<span class='tag'>" + Nombre_Vende + "</span>");
                            out.println("<button class='options'><svg xml:space='preserve' viewBox='0 0 41.915 41.916' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns='http://www.w3.org/2000/svg' id='Capa_1' version='1.1' fill='#000000'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><g><g><path d='M11.214,20.956c0,3.091-2.509,5.589-5.607,5.589C2.51,26.544,0,24.046,0,20.956c0-3.082,2.511-5.585,5.607-5.585 C8.705,15.371,11.214,17.874,11.214,20.956z'></path><path d='M26.564,20.956c0,3.091-2.509,5.589-5.606,5.589c-3.097,0-5.607-2.498-5.607-5.589c0-3.082,2.511-5.585,5.607-5.585 C24.056,15.371,26.564,17.874,26.564,20.956z'></path><path d='M41.915,20.956c0,3.091-2.509,5.589-5.607,5.589c-3.097,0-5.606-2.498-5.606-5.589c0-3.082,2.511-5.585,5.606-5.585 C39.406,15.371,41.915,17.874,41.915,20.956z'></path></g></g></g></svg></button>");
                        out.println("</div>");
                        out.println("<p>" + Descrip_Vende + "</p>");
                        out.println("<div class='stats'>");
                            out.println("<div>");
                                out.println("<div>");
                                    out.println("<svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><path stroke-linecap='round' stroke-width='2' d='M12 8V12L15 15'></path><circle stroke-width='2' r='9' cy='12' cx='12'></circle></g></svg>");
                                    out.println(Edad_Vende + " años");
                                out.println("</div><div>");
                                    out.println("<a href='JSPComentarios.jsp' class='linkComent'>");
                                    out.println("<svg class='comen' xmlns='http://www.w3.org/2000/svg' fill='none' viewBox'0 0 24 24'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><path stroke-linejoin='round' stroke-linecap='round' stroke-width='1.5' d='M16 10H16.01M12 10H12.01M8 10H8.01M3 10C3 4.64706 5.11765 3 12 3C18.8824 3 21 4.64706 21 10C21 15.3529 18.8824 17 12 17C11.6592 17 11.3301 16.996 11.0124 16.9876L7 21V16.4939C4.0328 15.6692 3 13.7383 3 10Z'></path></g></svg>");
                                    out.println("18");
                                    out.println("</a>");
                                out.println("</div><div>");
                                    out.println("<svg fill='#000000' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns='http://www.w3.org/2000/svg' version='1.1' viewBox='-2.5 0 32 32'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><g id='icomoon-ignore'></g><path fill='#000000' d='M0 10.284l0.505 0.36c0.089 0.064 0.92 0.621 2.604 0.621 0.27 0 0.55-0.015 0.836-0.044 3.752 4.346 6.411 7.472 7.060 8.299-1.227 2.735-1.42 5.808-0.537 8.686l0.256 0.834 7.63-7.631 8.309 8.309 0.742-0.742-8.309-8.309 7.631-7.631-0.834-0.255c-2.829-0.868-5.986-0.672-8.686 0.537-0.825-0.648-3.942-3.3-8.28-7.044 0.11-0.669 0.23-2.183-0.575-3.441l-0.352-0.549-8.001 8.001zM1.729 10.039l6.032-6.033c0.385 1.122 0.090 2.319 0.086 2.334l-0.080 0.314 0.245 0.214c7.409 6.398 8.631 7.39 8.992 7.546l-0.002 0.006 0.195 0.058 0.185-0.087c2.257-1.079 4.903-1.378 7.343-0.836l-13.482 13.481c-0.55-2.47-0.262-5.045 0.837-7.342l0.104-0.218-0.098-0.221-0.031 0.013c-0.322-0.632-1.831-2.38-7.498-8.944l-0.185-0.215-0.282 0.038c-0.338 0.045-0.668 0.069-0.981 0.069-0.595 0-1.053-0.083-1.38-0.176z'> </path></g></svg>");
                                    out.println(Calif_Vende);
                                out.println("</div>");
                            out.println("</div>");
                            out.println("<div class='viewer'>");
                                out.println("<span><svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><path stroke-width='2' stroke='#ffffff' d='M17 8C17 10.7614 14.7614 13 12 13C9.23858 13 7 10.7614 7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8Z'></path><path stroke-linecap='round' stroke-width='2' stroke='#ffffff' d='M3 21C3.95728 17.9237 6.41998 17 12 17C17.58 17 20.0427 17.9237 21 21'></path></g></svg></span>");
                                out.println("<span><svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><path stroke-width='2' stroke='#ffffff' d='M17 8C17 10.7614 14.7614 13 12 13C9.23858 13 7 10.7614 7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8Z'></path><path stroke-linecap='round' stroke-width='2' stroke='#ffffff' d='M3 21C3.95728 17.9237 6.41998 17 12 17C17.58 17 20.0427 17.9237 21 21'></path></g></svg></span>");
                                out.println("<span>+20</span>");
                            out.println("</div>");
                        out.println("</div>");
                    out.println("</div>");
                out.println("</article>");
    }
%>   
<%--
                    <article class="perfil">
                        <div class="task" draggable="true">
                            <div class="tags">
                                <span class="tag">Larry Cabrera</span>
                                <button class="options">
                                    <svg xml:space="preserve" viewBox="0 0 41.915 41.916" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" id="Capa_1" version="1.1" fill="#000000">
                                        <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                                        <g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g>
                                        <g id="SVGRepo_iconCarrier">
                                            <g>
                                                <g>
                                                    <path d="M11.214,20.956c0,3.091-2.509,5.589-5.607,5.589C2.51,26.544,0,24.046,0,20.956c0-3.082,2.511-5.585,5.607-5.585 C8.705,15.371,11.214,17.874,11.214,20.956z"></path>
                                                    <path d="M26.564,20.956c0,3.091-2.509,5.589-5.606,5.589c-3.097,0-5.607-2.498-5.607-5.589c0-3.082,2.511-5.585,5.607-5.585 C24.056,15.371,26.564,17.874,26.564,20.956z"></path>
                                                    <path d="M41.915,20.956c0,3.091-2.509,5.589-5.607,5.589c-3.097,0-5.606-2.498-5.606-5.589c0-3.082,2.511-5.585,5.606-5.585 C39.406,15.371,41.915,17.874,41.915,20.956z"></path>
                                                </g>
                                            </g>
                                        </g>
                                    </svg>
                                </button>
                            </div>
                            <p>Vendo servicios a domiciolio</p>
                            <div class="stats">
                                <div>
                                    <div>
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                                            <g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g>
                                            <g id="SVGRepo_iconCarrier">
                                                <path stroke-linecap="round" stroke-width="2" d="M12 8V12L15 15"></path>
                                                <circle stroke-width="2" r="9" cy="12" cx="12"></circle>
                                            </g>
                                        </svg>
                                        27 años
                                    </div>
                                    <div>
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                                            <g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g>
                                            <g id="SVGRepo_iconCarrier">
                                                <path stroke-linejoin="round" stroke-linecap="round" stroke-width="1.5" d="M16 10H16.01M12 10H12.01M8 10H8.01M3 10C3 4.64706 5.11765 3 12 3C18.8824 3 21 4.64706 21 10C21 15.3529 18.8824 17 12 17C11.6592 17 11.3301 16.996 11.0124 16.9876L7 21V16.4939C4.0328 15.6692 3 13.7383 3 10Z"></path>
                                            </g>
                                        </svg>
                                        18
                                    </div>
                                    <div>
                                        <svg fill="#000000" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="-2.5 0 32 32">
                                            <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                                            <g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g>
                                            <g id="SVGRepo_iconCarrier">
                                                <g id="icomoon-ignore"></g>
                                                <path fill="#000000" d="M0 10.284l0.505 0.36c0.089 0.064 0.92 0.621 2.604 0.621 0.27 0 0.55-0.015 0.836-0.044 3.752 4.346 6.411 7.472 7.060 8.299-1.227 2.735-1.42 5.808-0.537 8.686l0.256 0.834 7.63-7.631 8.309 8.309 0.742-0.742-8.309-8.309 7.631-7.631-0.834-0.255c-2.829-0.868-5.986-0.672-8.686 0.537-0.825-0.648-3.942-3.3-8.28-7.044 0.11-0.669 0.23-2.183-0.575-3.441l-0.352-0.549-8.001 8.001zM1.729 10.039l6.032-6.033c0.385 1.122 0.090 2.319 0.086 2.334l-0.080 0.314 0.245 0.214c7.409 6.398 8.631 7.39 8.992 7.546l-0.002 0.006 0.195 0.058 0.185-0.087c2.257-1.079 4.903-1.378 7.343-0.836l-13.482 13.481c-0.55-2.47-0.262-5.045 0.837-7.342l0.104-0.218-0.098-0.221-0.031 0.013c-0.322-0.632-1.831-2.38-7.498-8.944l-0.185-0.215-0.282 0.038c-0.338 0.045-0.668 0.069-0.981 0.069-0.595 0-1.053-0.083-1.38-0.176z"> </path>
                                            </g>
                                        </svg>
                                        7
                                    </div>
                                </div>
                                <div class="viewer">
                                    <span>
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                                            <g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g>
                                            <g id="SVGRepo_iconCarrier">
                                                <path stroke-width="2" stroke="#ffffff" d="M17 8C17 10.7614 14.7614 13 12 13C9.23858 13 7 10.7614 7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8Z"></path>
                                                <path stroke-linecap="round" stroke-width="2" stroke="#ffffff" d="M3 21C3.95728 17.9237 6.41998 17 12 17C17.58 17 20.0427 17.9237 21 21"></path>
                                            </g>
                                        </svg>
                                    </span>
                                    <span>
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                                            <g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g>
                                            <g id="SVGRepo_iconCarrier">
                                                <path stroke-width="2" stroke="#ffffff" d="M17 8C17 10.7614 14.7614 13 12 13C9.23858 13 7 10.7614 7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8Z"></path>
                                                <path stroke-linecap="round" stroke-width="2" stroke="#ffffff" d="M3 21C3.95728 17.9237 6.41998 17 12 17C17.58 17 20.0427 17.9237 21 21"></path>
                                            </g>
                                        </svg>
                                    </span>
                                    <span>
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                            <g stroke-width="0" id="SVGRepo_bgCarrier"></g>
                                            <g stroke-linejoin="round" stroke-linecap="round" id="SVGRepo_tracerCarrier"></g>
                                            <g id="SVGRepo_iconCarrier">
                                                <path stroke-width="2" stroke="#ffffff" d="M17 8C17 10.7614 14.7614 13 12 13C9.23858 13 7 10.7614 7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8Z"></path>
                                                <path stroke-linecap="round" stroke-width="2" stroke="#ffffff" d="M3 21C3.95728 17.9237 6.41998 17 12 17C17.58 17 20.0427 17.9237 21 21"></path>
                                            </g>
                                        </svg>
                                    </span>
                                    <span>
                                        +20
                                    </span>
                                </div>
                            </div>
                        </div>
                    </article>
--%>
            </section>
<%--                </section>
            </div>      --%>
        </header>
        <main class="filtros">
            <section class="opc">
                <div class="buscador">
                    <input placeholder="Type to search..." class="input" name="text" type="text">
                    <div class="icon">
                        <svg viewBox="0 0 512 512" class="ionicon" xmlns="http://www.w3.org/2000/svg">
                            <title>Search</title>
                            <path stroke-width="32" stroke-miterlimit="10" stroke="currentColor" fill="none" d="M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z"></path>
                            <path d="M338.29 338.29L448 448" stroke-width="32" stroke-miterlimit="10" stroke-linecap="round" stroke="currentColor" fill="none"></path>
                        </svg>
                    </div>
                </div>
                <div class="filtrito">
                    <p>Filtros:</p>
                    <div class="selecciones">
                        <select name="localidad">
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
                    </div>
                    <div class="selecciones">
                        <select name="calificacion">
                            <option disabled selected> </option>
                            <option value="0-1">0-1</option>
                            <option value="2-3">2-3</option>
                            <option value="4-5">4-5</option>
                        </select>
                        <span>Calificación</span>
                    </div>
                    <div class="selecciones">
                        <select name="categoria">
                            <option disabled selected> </option>
                            <option value="Femenino">Ingeniero</option>
                            <option value="Masculino">Licenciatura</option>
                        </select>
                        <span>Categoria</span>
                    </div>
                </div>
            </section>
            <section class="perfilitos">
<%
    resultados = statement.executeQuery("SELECT * FROM Vendedor");
    while (resultados.next()){
        Id_Vende = resultados.getInt("Id_Vend");
        Nombre_Vende = resultados.getString("Nom_Vend");
        Apellido_Vende = resultados.getString("Apellido_Vend");
        Edad_Vende = resultados.getInt("Edad_Vend");
        Tel_Vende = resultados.getString("Tel_Vend");
        Correo_Vende = resultados.getString("Correo_Vend");
        Sexo_Vende = resultados.getString("Sexo_Vend");
        Local_Vende = resultados.getString("Local_Vend");
        Categ_Vende = resultados.getString("Cate_Vend");
        Descrip_Vende = resultados.getString("Descr_Vend");
        Foto_Vende = resultados.getString("Foto_Vend");
        Calif_Vende = resultados.getInt("Cal_Vend");
                out.println("<article class='perfil'>");
                    out.println("<div class='task' draggable='true'>");
                        out.println("<div class='tags'>");
                            out.println("<span class='tag'>" + Nombre_Vende + "</span>");
                            out.println("<button class='options'><svg xml:space='preserve' viewBox='0 0 41.915 41.916' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns='http://www.w3.org/2000/svg' id='Capa_1' version='1.1' fill='#000000'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><g><g><path d='M11.214,20.956c0,3.091-2.509,5.589-5.607,5.589C2.51,26.544,0,24.046,0,20.956c0-3.082,2.511-5.585,5.607-5.585 C8.705,15.371,11.214,17.874,11.214,20.956z'></path><path d='M26.564,20.956c0,3.091-2.509,5.589-5.606,5.589c-3.097,0-5.607-2.498-5.607-5.589c0-3.082,2.511-5.585,5.607-5.585 C24.056,15.371,26.564,17.874,26.564,20.956z'></path><path d='M41.915,20.956c0,3.091-2.509,5.589-5.607,5.589c-3.097,0-5.606-2.498-5.606-5.589c0-3.082,2.511-5.585,5.606-5.585 C39.406,15.371,41.915,17.874,41.915,20.956z'></path></g></g></g></svg></button>");
                        out.println("</div>");
                        out.println("<p>" + Descrip_Vende + "</p>");
                        out.println("<div class='stats'>");
                            out.println("<div>");
                                out.println("<div>");
                                    out.println("<svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><path stroke-linecap='round' stroke-width='2' d='M12 8V12L15 15'></path><circle stroke-width='2' r='9' cy='12' cx='12'></circle></g></svg>");
                                    out.println(Edad_Vende + " años");
                                out.println("</div><div>");
                                    out.println("<a href='JSPComentarios.jsp' class='linkComent'>");
                                    out.println("<svg class='comen' xmlns='http://www.w3.org/2000/svg' fill='none' viewBox'0 0 24 24'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><path stroke-linejoin='round' stroke-linecap='round' stroke-width='1.5' d='M16 10H16.01M12 10H12.01M8 10H8.01M3 10C3 4.64706 5.11765 3 12 3C18.8824 3 21 4.64706 21 10C21 15.3529 18.8824 17 12 17C11.6592 17 11.3301 16.996 11.0124 16.9876L7 21V16.4939C4.0328 15.6692 3 13.7383 3 10Z'></path></g></svg>");
                                    out.println("18");
                                    out.println("</a>");
                                out.println("</div><div>");
                                    out.println("<svg fill='#000000' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns='http://www.w3.org/2000/svg' version='1.1' viewBox='-2.5 0 32 32'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><g id='icomoon-ignore'></g><path fill='#000000' d='M0 10.284l0.505 0.36c0.089 0.064 0.92 0.621 2.604 0.621 0.27 0 0.55-0.015 0.836-0.044 3.752 4.346 6.411 7.472 7.060 8.299-1.227 2.735-1.42 5.808-0.537 8.686l0.256 0.834 7.63-7.631 8.309 8.309 0.742-0.742-8.309-8.309 7.631-7.631-0.834-0.255c-2.829-0.868-5.986-0.672-8.686 0.537-0.825-0.648-3.942-3.3-8.28-7.044 0.11-0.669 0.23-2.183-0.575-3.441l-0.352-0.549-8.001 8.001zM1.729 10.039l6.032-6.033c0.385 1.122 0.090 2.319 0.086 2.334l-0.080 0.314 0.245 0.214c7.409 6.398 8.631 7.39 8.992 7.546l-0.002 0.006 0.195 0.058 0.185-0.087c2.257-1.079 4.903-1.378 7.343-0.836l-13.482 13.481c-0.55-2.47-0.262-5.045 0.837-7.342l0.104-0.218-0.098-0.221-0.031 0.013c-0.322-0.632-1.831-2.38-7.498-8.944l-0.185-0.215-0.282 0.038c-0.338 0.045-0.668 0.069-0.981 0.069-0.595 0-1.053-0.083-1.38-0.176z'> </path></g></svg>");
                                    out.println(Calif_Vende);
                                out.println("</div>");
                            out.println("</div>");
                            out.println("<div class='viewer'>");
                                out.println("<span><svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><path stroke-width='2' stroke='#ffffff' d='M17 8C17 10.7614 14.7614 13 12 13C9.23858 13 7 10.7614 7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8Z'></path><path stroke-linecap='round' stroke-width='2' stroke='#ffffff' d='M3 21C3.95728 17.9237 6.41998 17 12 17C17.58 17 20.0427 17.9237 21 21'></path></g></svg></span>");
                                out.println("<span><svg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 24 24'><g stroke-width='0' id='SVGRepo_bgCarrier'></g><g stroke-linejoin='round' stroke-linecap='round' id='SVGRepo_tracerCarrier'></g><g id='SVGRepo_iconCarrier'><path stroke-width='2' stroke='#ffffff' d='M17 8C17 10.7614 14.7614 13 12 13C9.23858 13 7 10.7614 7 8C7 5.23858 9.23858 3 12 3C14.7614 3 17 5.23858 17 8Z'></path><path stroke-linecap='round' stroke-width='2' stroke='#ffffff' d='M3 21C3.95728 17.9237 6.41998 17 12 17C17.58 17 20.0427 17.9237 21 21'></path></g></svg></span>");
                                out.println("<span>+20</span>");
                            out.println("</div>");
                        out.println("</div>");
                    out.println("</div>");
                out.println("</article>");
    }
%>
            </section>
        </main>
    </body>
</html>