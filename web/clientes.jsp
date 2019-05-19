<%@page import="java.sql.*"%>
<!DOCTYPE HTML>
<!--
	Photon by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Alquiler de Peliculas Online</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
               %>
               
	</head>
	<body class="is-preload">

		<!-- Header -->
			<section id="header">
				<div class="inner">
					<span class="icon major fa-cloud"></span>
					<h1>Bienvenidos a nuestro videoclub virtual donde podrás alquilar tus peliculas favoritas sin moverte de tu casa<br /></h1>
					<h1>Bienvenido: <% out.print(request.getParameter("usuario"));%><br /></h1>
					<ul class="actions special">
						<li><a href="#alquilar" class="button scrolly">Alquilar Peliculas</a></li>
                                                <li><a href="#misAlquiladas" class="button scrolly">Mis Peliculas Alquiladas</a></li>
                                        </ul>
				</div>
			</section>

		<!-- alquilar -->
			<section id="alquilar" class="main style1">
				<div class="container">
					<div class="left">
						<div class="col-6 col-12-medium">
							<header class="major">
								<h2>Peliculas disponibles</h2>
							</header>
							<p>Listado de peliculas disponibles</p>
                                                        
                                                        <table border="1" widht="800">
                                                            <tr>
                                                                <th>id</th><th>Titulo</th><th>Sinopsis</th><th>Cantidad de veces</th><th>Alquilar</th>
                                                            </tr>
                                                            <%
                                                            Connection cnx=null;
                                                            Statement sta=null;
                                                            ResultSet rs=null;
                                                            
                                                            try{
                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                cnx=DriverManager.getConnection ("jdbc:mysql://localhost/videotienda?user=root&password=");
                                                            sta=cnx.createStatement ();
                                                            rs=sta.executeQuery("select * from peliculas WHERE estado=0");
                                                            
                                                            while (rs.next()){
                                                                
                                                            
                                                                %>
                                                                <tr>
                                                                <th><%=rs.getString(1)%></th>
                                                                <th><%=rs.getString(2)%></th>
                                                                <th><%=rs.getString(3)%></th>
                                                                <th><%=rs.getString(6)%></th>
                                                                <th>
                                                                    <a href="alquilar.jsp?cod=<%=rs.getString(1)%>&usuario=<%request.getParameter("usuario");%>&cont=<%=rs.getString(6)%>">                                                                    
                                                                    <img src="images/play.png" width="30" height="30">
                                                                    </a>
                                                                </th>
                                                                </tr>
                                                                
                                                            <%
                                                                }
                                                                
                                                            }catch (Exception e) {}
                                                            
                                                            %>
                                                        </table>
                             
						</div>
                                        </div>
				</div>
			</section>
                                                        
                <!-- misAlquiladas -->
			<section id="misAlquiladas" class="main style1">
				<div class="container">
					<div class="left">
						<div class="col-6 col-12-medium">
							<header class="major">
								<h2>Mis Peliculas Alquiladas</h2>
							</header>
							<p>Listado de Mis Peliculas Alquiladas</p>
                                                        
                                                        <table border="1" widht="800">
                                                            <tr>
                                                                <th>id</th><th>Titulo</th><th>Sinopsis</th><th>Devolver</th>
                                                            </tr>
                                                            <%
                                                                                                                   
                                                            try{
                                                                
                                                            rs=sta.executeQuery("select * from peliculas WHERE estado=1 AND cliente='"+request.getParameter("usuario")+"'");
                                                            
                                                            while (rs.next()){
                                                                
                                                            
                                                                %>
                                                                <tr>
                                                                <th><%=rs.getString(1)%></th>
                                                                <th><%=rs.getString(2)%></th>
                                                                <th><%=rs.getString(3)%></th>
                                                                </tr>
                                                                <th>
                                                                    <a href="devolver.jsp?cod=<%=rs.getString(1)%>&usuario=<%request.getParameter("");%>">                                                                    
                                                                    <img src="images/play.png" width="30" height="30">
                                                                    </a>
                                                            <%
                                                                }
                                                                
                                                            }catch (Exception e) {}
                                                            
                                                            %>
                                                        </table>
                                                        
						</div>
						<div class="col-6 col-12-medium imp-medium">
							
						</div>
					</div>
				</div>
			</section>
                                                        
 	
		<!-- Footer -->
			<section id="footer">
				<ul class="icons">
					<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
					<li><a href="#" class="icon alt fa-envelope"><span class="label">Email</span></a></li>
				</ul>
				<ul class="copyright">
					<li>&copy; VideoTiendaOnline</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
				</ul>
			</section>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>