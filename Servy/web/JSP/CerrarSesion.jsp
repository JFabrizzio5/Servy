<%
//Obtener la sesi�n actual
HttpSession sesion =  request.getSession(false);
if (sesion != null) {
    // Invalidar la sesi�n
    sesion.invalidate();
}
//Redirigir al usuario a la p�gina de inicio de sesi�n
response.sendRedirect("InicioSesion.jsp");
%>