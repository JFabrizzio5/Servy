<%--
<%@ page import="java.sql.*" %>
<%
    String url = "jdbc:mysql://localhost:3308/EverythingWorks";
    String usuario = "root";
    String password = "n0m3l0";
    Connection conexion = DriverManager.getConnection(url, usuario, password);

    String correo = request.getParameter("correo");
    String contrasena = request.getParameter("contrasena");
    boolean loginCorrecto = false;
    
    String consulta = "SELECT * FROM Usuario WHERE Correo_Usu = '" + correo + "'AND Contrasena_Usu = '" + contrasena + "'";
    Statement statement = conexion.createStatement();
    ResultSet resultSet = statement.executeQuery(consulta);
    
    while (resultSet.next()) {
        // procesar los resultados
        String correoE = resultSet.getString("Correo_Usu");
        String contra = resultSet.getString("Contrasena_Usu");
        
        // Iniciar sesi�n
        session.setAttribute("Correo_Usu", correoE);
        response.sendRedirect("Intereses.jsp");
        loginCorrecto = true;
    }
    // Si el inicio de sesi�n no es v�lido, mostrar un mensaje de error en una ventana emergente
    if (!loginCorrecto) {
%>
    <script>
        alert("Los datos ingresados no son v�lidos. Por favor, int�ntalo de nuevo.");
        window.location.replace("InicioSesion.jsp");
    </script>
<%
    }
%>
--%>
<%@ page import="java.sql.*" %>
<%
    Class.forName("com.mysql.jdbc.Driver").newInstance ();
    
    String url = "jdbc:mysql://localhost:3308/EverythingWorks";
    String usuario = "root";
    String password = "n0m3l0";
    Connection conexion = null;
    Statement consulta = null;
    ResultSet resultados = null;

    try {
        Class.forName("com.mysql.jdbc.Driver").newInstance ();
        conexion = DriverManager.getConnection(url, usuario, password);

        String correo = request.getParameter("correo");
        String contrasena = request.getParameter("contrasena");

        // Consulta para buscar un usuario con el correo y la contrase�a ingresados
        String sql = "SELECT * FROM Usuario WHERE Correo_Usu = '" + correo + "' AND Contrasena_Usu = '" + contrasena + "'";
        consulta = conexion.createStatement();
        resultados = consulta.executeQuery(sql);

        if (resultados.next()) {
            // Inicio de sesi�n exitoso, establecer atributo de sesi�n con el correo electr�nico del usuario
            String correoE = resultados.getString("Correo_Usu");
            session.setAttribute("Correo_Usu", correoE);
            response.sendRedirect("Intereses.jsp");
        } else {
            // Inicio de sesi�n fallido, mostrar mensaje de error en la p�gina misma
%>
            <p>Los datos ingresados no son v�lidos. Por favor, int�ntalo de nuevo.</p>
            <script>
                alert("Los datos ingresados no son v�lidos. Por favor, int�ntalo de nuevo.");
                window.location.replace("InicioSesion.jsp");
            </script>
<%
        }
    } catch (SQLException e) {
        // Manejo de errores de base de datos
        out.println("Error de base de datos: " + e.getMessage());
    } finally {
        // Cerrar recursos
        if (resultados != null) {
            resultados.close();
        }
        if (consulta != null) {
            consulta.close();
        }
        if (conexion != null) {
            conexion.close();
        }
    }
%>
