<%-- 
    Document   : index
    Created on : Oct 24, 2023, 8:03:32 PM
    Author     : camig
--%>

<%@page import="java.lang.String"%>
<%@page import="MODELO.PilaDeRecomendaciones"%>
<%@page import="MODELO.ColaDeSolicitudes"%>
<%@page import="java.util.List"%>content
<%@page import="MODELO.Libro"%>
<%@page import="MODELO.ExcelToSQLiteExample"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%><!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" ="text/html; charset=UTF-8">
        <title>MySpace</title>
        <link href="design.css" rel="stylesheet" type="text/css"/>
        <script src="javascript.js" type="text/javascript"></script>
    </head>
    <body class="myspace">
        <!-- Descubre -->
        <section class="section" id="discover">
            <div class="myspace-content">
                <header class="header"> 
                    <h1 class="font-effect-outline">MY SPACE</h1>
                </header>
                <div class="column-myspace">
                   
                    <div class="pilas"> <span style="font-size: 25px; text-align:center;">RECOMENDACIONES</span><br>
                        <%   String genero = request.getParameter("genero");
                            ColaDeSolicitudes c = new ColaDeSolicitudes();
                            c.agregarSolicitud(genero);
                            out.println(c.procesarSolicitud());
                        %>
                    </div>
                    <div class="pilas"><span style="font-size: 25px; text-align:center;"> MI HISTORIAL</span><br>
                       <%
                            String nombre = request.getParameter("nombre");
                            String autor = request.getParameter("autor");
                            String msj = nombre + autor;
 

                            PilaDeRecomendaciones p = new PilaDeRecomendaciones();
                            if (autor != null && nombre != null) {
                                out.println(p.agregarLibro(msj));
                            } else {
                                out.println(p.mostrarPila());

                            }
                        %>
                    </div>

                </div>
            </div>

        </div> 
        <footer class="footer-myspace">
            <nav class="navbar">
                <a href="index.jsp">D  E  S  C  U  B  R  E  </a>       
                <a>|</a>
                <a href="myspace.jsp">M Y   S P A C E </a>
                <a>|</a>
                <a href="ConsultarLibros.jsp">S  O  L  I  C  I  T  U  D  </a>
            </nav>
        </footer>
    </section>
</body>

</html>
