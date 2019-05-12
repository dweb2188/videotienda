<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado</h1>
        <%  
            String pro=request.getParameter("selectPro");  
             String nom=request.getParameter("txtNom");  
              String tel=request.getParameter("txtTel"); 
               String dir=request.getParameter("txtDir"); 
                String usu=request.getParameter("txtUsu"); 
                 String con=request.getParameter("txtCon"); 
                  String  cantar=request.getParameter("cantar"); 
                  String  bailar=request.getParameter("bailar"); 
                  String  pintar=request.getParameter("pintar"); 
                  String  tocar=request.getParameter("tocar"); 
             
 
      
            %>
            
            Deporte: <%=pro%><br>
            Nombre y Apellido: <%=nom%><br>
            Telefono: <%=tel%><br>
            Direción: <%=dir%><br>
            Usuario: <%=usu%><br>
            Contraseña: <%=con%><br>
            Deporte: <%=pro%><br>
            <br>
            <%=cantar%><br>
             <%=bailar%><br>
              <%=pintar%><br>
               <%=tocar%><br>
           
            
           
            <a href="index.jsp">
               Volver a Principal
             </a>
                    
        
    </body>
</html>