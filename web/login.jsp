<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VideoTienda</title>
        <%
            String nombre = request.getParameter("nombre");
          
if (nombre.equals("admin")) {
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
