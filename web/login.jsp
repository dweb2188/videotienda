<%-- 
    Document   : login
    Created on : 16/05/2019, 08:18:27 PM
    Author     : usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            String usuario = request.getParameter("usuario");
            String contrasena = request.getParameter("contrasena");
            
if (usuario.equals("admin")) {
    request.getRequestDispatcher("administrador.jsp").forward(request, response);
        
    }
else
request.getRequestDispatcher("clientes.jsp").forward(request, response);
        %>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
