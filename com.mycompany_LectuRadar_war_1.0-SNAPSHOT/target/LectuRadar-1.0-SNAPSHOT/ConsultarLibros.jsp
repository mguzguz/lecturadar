<%-- 
    Document   : ConsultarLibros
    Created on : 27/10/2023, 07:08:07 PM
    Author     : WORKING
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ReadingFollow</title>
        <link href="design2.css" rel="stylesheet" type="text/css"/>
        <script src="javascript.js" type="text/javascript"></script>
    </head>
    <body>
    <section class="section" id="discover">
            <header class="header"> 
                <h1 class="font-effect-outline">¿SIN IDEAS?</h1>
            </header>
            <div class="cuadro">
            </div>
        <form action="myspace.jsp" class="formSolicitud" method="post">
                <h1 style="font-size: 30px; margin-top: 12px; text-align: center;">NO TE PREOCUPES!!</h1>
                <h2 style="font-size: 20px; margin-top: 10px; text-align: center;">Te podemos recomendar algo</h2>
                <p style="font-size: 15px; margin-top: 9px; margin-bottom: 10px;">Te podemos recomendar un libro por el género que más te guste. Selecciona un genero.</p>


                <select name="genero" id="selectForm">
                    <option disabled selected>Selecciona tu genero</option>
                    <option value="Ciencia Ficcion">Ciencia Ficcion</option>
                    <option value="Terror">Terror</option>
                    <option value="Juvenil">Juvenil</option>
                    <option value="Romance">Romance</option>
                    <option value="Aventura">Aventura</option>
                    <option value="Realismo Magico">Realismo Magico</option>
                    <option value="Crimen y Misterio">Crimen y Misterio</option>
                    <option value="Filosofia">Filosofia</option>
                </select>
                <br>
                <br>
                <br>
                <input type="submit" value="Enviar">
            </form>
        <footer class="footer">
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