<%
//Obtener la sesión actual
HttpSession sesion =  request.getSession(false);
if (sesion != null) {
    // Invalidar la sesión
    sesion.invalidate();
}
//Redirigir al usuario a la página de inicio de sesión
response.sendRedirect("InicioSesion.jsp");
%>