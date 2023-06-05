<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.io.*" %>
<!DOCTYPE html>


<%! String LugarCliente = null;%>

<%!Statement stmt = null;%>
<%!ResultSet rs = null;%>
<%!ResultSet rs02 = null;%>
<%!Connection con = null;%>

<%! String Nom_Vend = null;%>
<%! String Apellido_Vend = null;%>
<%! int Edad_Vend = 0;%>
<%! String Tel_Vend = null;%>
<%! String Correo_Vend = null;%>
<%! String Local_Vend = null;%>
<%! String Sexo_Vend = null;%>
<%! String Cate_Vend = null;%>
<%! String Descr_Vend = null;%>
<%! int Cal_Vend = 0;%>
<%! int Id_Vend = 0;%>

<%! String autor_com = null;%>
<%! String comentario = null;%>
<%! String Correo_Usu = null;%>
<%! int calif_com = 0;%>


<%    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection("jdbc:mysql://localhost:3308/EverythingWorks?user=root&password=n0m3l0");
    stmt = con.createStatement();
    
    
    Correo_Vend = request.getParameter("Correo");
    
    rs = stmt.executeQuery("SELECT * FROM Vendedor WHERE Correo_Vend = '" + Correo_Vend + "'" );
    
%>

<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="../Image/logo.png" type="image/x-icon">
        <link rel="stylesheet" href="../CSS/VisualizacionCSS.css">
        <title>COMENTARIOS</title>
    </head>
    <body>
        <nav class="nav">
            <img style="width: 105px; height: 65px;  display: inline-block;" src="../Image/logoSF.png"><center><p>BIENVENIDO USUARIO</p></center>
            <img style="width: 105px; height: 65px;  opacity: 0.01;" src="../Image/logoSF.png">
        </nav>
        
        <div class="textito-header">
            <h2>Bienvenido estimado usuario, en este apartado comenta tu opinion respecto al usuario o visualiza los comentarios de otros usuarios</h2>
        </div>
    <br><br><br><center>
        
        <%  
            while(rs.next()){
                Nom_Vend=rs.getString("Nom_Vend");
                Apellido_Vend=rs.getString("Apellido_Vend");
                Tel_Vend=rs.getString("Tel_Vend");
                Correo_Vend=rs.getString("Correo_Vend");
                Sexo_Vend=rs.getString("Sexo_Vend");
                Cate_Vend=rs.getString("Cate_Vend");
                Local_Vend=rs.getString("Local_Vend");
                Descr_Vend=rs.getString("Descr_Vend");
                Cal_Vend=rs.getInt("Cal_Vend");
                Edad_Vend=rs.getInt("Edad_Vend");
                Id_Vend = rs.getInt("Id_Vend");
                
                out.println("<div class='Perfiles'>");
                out.println("<br><br><br>");
                out.println("<TABLE border> <form action='../JSP/JSPComentarios.jsp'>");
                out.println("<TR align=center>");
                out.println("<TH width=903px> Información de Vendedor </TH>");
                out.println("</TR>");
                out.println("<TR><TABLE><TR>");
                if(Cate_Vend.equals("Mecanico")){
                    out.println("<TH align=center width=400px><img style='width: 300px; height: 300px;  display: inline-block;' src='../Image/Mecanico.png'></TH>");
                } else if (Cate_Vend.equals("Panadero")) {
                    out.println("<TH align=center width=400px><img style='width: 250px; height: 300px;  display: inline-block;' src='../Image/Panadero.jpg'></TH>");
                } else if (Cate_Vend.equals("Creador de Manualidades")) {
                    out.println("<TH align=center width=400px><img style='width: 375px; height: 160px;  display: inline-block;' src='../Image/Manual.png'></TH>");
                } else
                    out.println("<TH align=center width=400px><img style='width: 300px; height: 300px;  display: inline-block;' src='../Image/Tecnologia.png'></TH>");
                out.println("<TH align=center width=250px>" + Descr_Vend + "</TH>");
                out.println("<TH align=center width=250px>" + Nom_Vend + " " + Apellido_Vend + "<br><br>" + Cate_Vend + " de " + Edad_Vend + " años <br><br> Calificacion: " + Cal_Vend + "</TH>");
                out.println("</TR></TABLE></TR>");
                out.println("<TR align=center>");
                out.println("<TH width=903px> Información de Contacto </TH>");
                out.println("</TR><TR><TABLE><TR>");
                out.println("<TH align=center width=300px> Telefono:  " + Tel_Vend + "</TH>");
                out.println("<TH align=center width=300px> Correo:  " + Correo_Vend + "</TH>");
                out.println("<TH align=center width=300px> Alcaldia:  " + Local_Vend + "</TH>");
                out.println("</TR></TABLE>");
                out.println("</TR>");
                out.println("</div>");
                out.println("</form></TABLE><br><br><br><br>");
            }
            
            rs02 = stmt.executeQuery("SELECT * FROM Comentarios WHERE Id_Vend = '" + Id_Vend + "'" );
            
            out.println("<h2>COMENTARIOS</h2>");
            while(rs02.next()){
                autor_com=rs02.getString("autor_com");
                comentario = rs02.getString("comentario");
                calif_com = rs02.getInt("calif_com");
                out.println("<br>");
                out.println("<div class='Comentarios'>");
                out.println("<br><br><br>");
                out.println("<label class='comenta'>Comentario de " + autor_com + " para "+ Nom_Vend + " " + Apellido_Vend + "</label>");
                out.println("<br><hr width=300px><br>");
                out.println("<label class='comenta02'>" + comentario + "</label><br><br><br>");
                if(calif_com==1){
                out.println("<br><label class='comenta02'>Calificacion: </label><img style='width: 200px; height: 40px;  display: inline-block;' src='../Image/UnaEst.png'><br>");
                } else if(calif_com==2){
                    out.println("<br><label class='comenta02'>Calificacion: </label><img style='width: 200px; height: 40px;  display: inline-block;' src='../Image/DosEst.png'><br>");
                } else if(calif_com==3){
                    out.println("<br><label class='comenta02'>Calificacion: </label><img style='width: 200px; height: 40px;  display: inline-block;' src='../Image/TresEst.png'><br>");
                } else if(calif_com==4){
                    out.println("<br><label class='comenta02'>Calificacion: </label><img style='width: 200px; height: 40px;  display: inline-block;' src='../Image/CuatroEst.png'><br>");
                } else if(calif_com==0){
                    out.println("<br><label class='comenta02'>Calificacion: </label><img style='width: 200px; height: 40px;  display: inline-block;' src='../Image/CeroEst.png'><br>");
                } else
                    out.println("<br><label class='comenta02'>Calificacion: </label><img style='width: 200px; height: 40px;  display: inline-block;' src='../Image/CincoEst.png'><br>");
                out.println("</div>");
                out.println("<br><br>");
            }
            
            out.println("<br><br>");
            out.println("<h2>SUBIR COMENTARIO</h2><br>");
            out.println("<div class='Comentarios'><form action='../JSP/JSPSubirComentario.jsp'>");
            out.println("<br><br>");
            out.println("<label class='comenta'>Subir Comentario Para " + Nom_Vend + " " + Apellido_Vend + "</label>");
            out.println("<br><hr width=300px><br>");
            out.println("<label class='comenta02'>Vendedor: </label><select name='Correo_Vend'>");
            out.println("<option value='" + Correo_Vend + "'>" + Correo_Vend + "</option>");
            out.println("</select>");
            rs = stmt.executeQuery("SELECT * FROM Usuario" );
            out.println("<br><label class='comenta02'> Cliente: </label><select name='Correo_Usu'>");
            while(rs.next()){
            Correo_Usu= rs.getString("Correo_Usu");
            out.println("<option value='" + Correo_Usu + "'>" + Correo_Usu + "</option>");
            }
            out.println("</select><br>");
            out.println("<br><label class='comenta02'> Calificacion: </label><input type='number' pattern='[0-5]{1}' required='required' name='calif_com'>");
            out.println("<br><label class='comenta02'> Comentario: </label><input type='text' required='required' name='comentario'>");
            
            out.println("<br><br><button name='Comentar'>Comentar Perfil</button>");
            
            out.println("</form></div>");
            %>
    </center>
    <br><br><br><br>
    </body>
</html>
