<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String cod=request.getParameter("id");
            String usuario=request.getParameter("cliente");
            
                Connection cnx=null;
                Statement sta=null;
                ResultSet rs=null;
                                                           
                try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx=DriverManager.getConnection ("jdbc:mysql://localhost/videotienda?user=root&password=");
                sta=cnx.createStatement ();
                sta.executeUpdate("UPDATE peliculas SET estado='1' SET cliente='"+request.getParameter("usuario")+"' WHERE id='"+request.getParameter("cod")+"'");
                request.getRequestDispatcher("clientes.jsp").forward(request, response);
                                                            
                }catch (Exception e) {}
                                                            
       %>
       <h1>cod <% out.print(request.getParameter("id"));%><br /></h1>
       <h1>cliente <% out.print(request.getParameter("cliente"));%><br /></h1>
       <h1>cliente <% out.print(usuario);%><br /></h1>
       
    </body>
</html>
