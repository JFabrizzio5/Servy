<%@ page import="java.sql.*" %>
<%
    //Conexion a base de datos
    String url = "jdbc:mysql://localhost:3308/EverythingWorks";
    String usuario = "root";
    String password = "n0m3l0";
    
    // Recibimos los valores enviados por el formulario
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    int edad = Integer.parseInt(request.getParameter("edad"));
    String telefono = request.getParameter("telefono");
    String correo = request.getParameter("correo");
    String contrasena = request.getParameter("contrasena");
    String genero = request.getParameter("genero");
    String localidad = request.getParameter("localidad");
    String Tusuario = request.getParameter("usuarios");
    String descripcion = request.getParameter("descrip");
    
    Connection conexion = null;
    Statement statement = null;
    
    try {
        // Creamos la conexión a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        conexion = DriverManager.getConnection(url, usuario, password);

        // Creamos el Statement para ejecutar el insert
        statement = conexion.createStatement();

        // Ejecutamos el insert en la base de datos
        String query = "";
        if(Tusuario.equals("Comprador")){
            query = "INSERT INTO Usuario VALUES (default,'" + nombre + "','" + apellido + "'," + edad + ",'" + telefono + "','" + correo + "','" + contrasena + "','" + genero + "','" + localidad + "','no hay fotito')";
        }else{
            query = "INSERT INTO Vendedor VALUES (default,'" + nombre + "','" + apellido + "'," + edad + ",'" + telefono + "','" + correo + "','" + contrasena + "','" + genero + "','" + localidad + "','vende algo','" + descripcion + "','no hay fotito',5)";
        }
        statement.executeUpdate(query);

        // Cerramos la conexión a la base de datos
        statement.close();
        conexion.close();

        // Redireccionamos a una página de confirmación
        response.sendRedirect("InicioSesion.jsp");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    } catch (SQLException e) {
        e.printStackTrace();
    } finally {
        try {
            if (statement != null) {
                statement.close();
            }
            if (conexion != null) {
                conexion.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>