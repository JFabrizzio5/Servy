<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*" %>
<%@ page import= "java.io.*" %>
<!DOCTYPE html>
<%!Statement stmt = null;%>
<%!ResultSet rs = null;%>
<%!ResultSet rs02 = null;%>
<%!Connection con = null;%>

<%! String Nom_Usu = null;%>
<%! String Correo_Vend = null;%>
<%! String autor_com = null;%>
<%! String comentario = null;%>
<%! String Correo_Usu = null;%>
<%! int calif_com = 0;%>
<%! int Id_Usu = 0;%>
<%! int Id_Vend = 0;%>

<%    
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    con = DriverManager.getConnection("jdbc:mysql://localhost:3308/EverythingWorks?user=root&password=n0m3l0");
    stmt = con.createStatement();
    
    
    Correo_Vend = request.getParameter("Correo_Vend");
    Correo_Usu = request.getParameter("Correo_Usu");
    comentario = request.getParameter("comentario");
    calif_com= Integer.parseInt(request.getParameter("calif_com"));
    
    
    rs02= stmt.executeQuery("SELECT * FROM Usuario WHERE Correo_Usu = '" + Correo_Usu + "'" );
    while(rs02.next()){
    autor_com=rs02.getString("Nom_Usu");
    Id_Usu=rs02.getInt("Id_Usu");
    }
    
    rs = stmt.executeQuery("SELECT * FROM Vendedor WHERE Correo_Vend = '" + Correo_Vend + "'" );
    while(rs.next()){
    Id_Vend=rs.getInt("Id_Vend");
    }
    
    stmt.execute("INSERT INTO Comentarios (autor_com, comentario, calif_com, Id_Vend, Id_Usu) VALUES ('"+ autor_com +"','"+ comentario +"',"+
            calif_com +","+Id_Vend+","+Id_Usu+")");
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMENTARIO SUBIDO</title>
        <META HTTP-EQUIV="REFRESH" CONTENT="2;URL=JSPComentarios.jsp">
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
