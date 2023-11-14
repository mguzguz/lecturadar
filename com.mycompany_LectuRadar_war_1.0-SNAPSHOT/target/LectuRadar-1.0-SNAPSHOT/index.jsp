<%@page import="java.sql.*"%>
<%@page import="MODELO.Libro"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="design.css" rel="stylesheet" type="text/css"/>
        <script src="javascript.js" type="text/javascript"></script>
    </head>

    <%
        Statement s;
        Connection c;
        PreparedStatement ps;
        ResultSet rs;

    %>
    <body class="discover">
        <section class="section" id="discover">
            <div class="myspace-content">
                <header class="header"> 
                    <h1 class="font-effect-outline">DESCUBRE</h1>
                </header>
                <div class="columns">
                    <div class="column"><span id="aventuraText">Aventura</span>
                        <table>
                            <tr>
                                <th>Nombre</th>
                                <th>Autor</th>
                                <th>Acción</th>
                            </tr>
                            <%  try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    c = DriverManager.getConnection("jdbc:mysql://localhost/libros", "root", "");//bd_proyecto
                                    s = c.createStatement();
                                    rs = s.executeQuery("SELECT * FROM libro WHERE Genero='Aventura'");

                                    while (rs.next()) {
                            %>
                            <tr>
                                <td><%= rs.getString("Nombre")%></td>
                                <td><%= rs.getString("Autor")%></td>
                                <td>
                                    <form action="myspace.jsp" method="post">
                                        <input type="hidden" name="nombre" value=" <%=rs.getString(1)%>">
                                        <input type="hidden" name="autor" value=" <%=rs.getString(3)%>">
                                        <input type="submit" value="A leer">
                                    </form>
                                </td>
                            </tr>
                            <%
                                    }
                                } catch (Exception e) {
                                }


                            %>

                        </table>
                    </div>
                        <div class="column"><span id="aventuraText">Ciencia Ficcion</span>
                            <table>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Autor</th>
                                    <th>Acción</th>
                                </tr>
                                <%  try {
                                        Class.forName("com.mysql.jdbc.Driver");
                                        c = DriverManager.getConnection("jdbc:mysql://localhost/libros", "root", "");//bd_proyecto
                                        s = c.createStatement();
                                        rs = s.executeQuery("SELECT * FROM libro WHERE Genero='Ciencia Ficcion'");

                                        while (rs.next()) {
                                %>
                                <tr>
                                    <td><%= rs.getString("Nombre")%></td>
                                    <td><%= rs.getString("Autor")%></td>
                                    <td>
                                        <form action="myspace.jsp" method="post">
                                            <input type="hidden" name="nombre" value=" <%=rs.getString(1)%>">
                                            <input type="hidden" name="autor" value=" <%=rs.getString(3)%>">
                                            <input type="submit" value="A leer">
                                        </form>
                                    </td>
                                </tr>
                                <%
                                        }
                                    } catch (Exception e) {
                                    }


                                %>

                            </table>
                        </div>
                        <div class="column">                       
                            <span id="aventuraText">Crimen y Misterio</span>
                                <table>
                                    <tr>
                                        <th>Nombre</th>
                                        <th>Autor</th>
                                        <th>Acción</th>
                                    </tr>
                                    <%  try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            c = DriverManager.getConnection("jdbc:mysql://localhost/libros", "root", "");//bd_proyecto
                                            s = c.createStatement();
                                            rs = s.executeQuery("SELECT * FROM libro WHERE Genero='Crimen y Misterio'");

                                            while (rs.next()) {
                                    %>
                                    <tr>
                                        <td><%= rs.getString("Nombre")%></td>
                                        <td><%= rs.getString("Autor")%></td>
                                        <td>
                                            <form action="myspace.jsp" method="post">
                                                <input type="hidden" name="nombre" value=" <%=rs.getString(1)%>">
                                                <input type="hidden" name="autor" value=" <%=rs.getString(3)%>">
                                                <input type="submit" value="A leer">
                                            </form>
                                        </td>
                                    </tr>
                                    <%
                                            }
                                        } catch (Exception e) {
                                        }


                                    %>

                                </table>
                            </div>
                            <div class="column">                            
                                <span id="aventuraText">Realismo Magico</span>
                                    <table>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Autor</th>
                                            <th>Acción</th>
                                        </tr>
                                        <%  try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                c = DriverManager.getConnection("jdbc:mysql://localhost/libros", "root", "");//bd_proyecto
                                                s = c.createStatement();
                                                rs = s.executeQuery("SELECT * FROM libro WHERE Genero='Realismo Magico'");

                                                while (rs.next()) {
                                        %>
                                        <tr>
                                            <td><%= rs.getString("Nombre")%></td>
                                            <td><%= rs.getString("Autor")%></td>
                                            <td>
                                                <form action="myspace.jsp" method="post">
                                                    <input type="hidden" name="nombre" value=" <%=rs.getString(1)%>">
                                                    <input type="hidden" name="autor" value=" <%=rs.getString(3)%>">
                                                    <input type="submit" value="A leer">
                                                </form>
                                            </td>
                                        </tr>
                                        <%
                                                }
                                            } catch (Exception e) {
                                            }


                                        %>

                                    </table>
                                </div>
                                <div class="column">
                                    <span id="aventuraText">Filosofia</span>
                                        <table>
                                            <tr>
                                                <th>Nombre</th>
                                                <th>Autor</th>
                                                <th>Acción</th>
                                            </tr>
                                            <%  try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    c = DriverManager.getConnection("jdbc:mysql://localhost/libros", "root", "");//bd_proyecto
                                                    s = c.createStatement();
                                                    rs = s.executeQuery("SELECT * FROM libro WHERE Genero='Filosofía'");

                                                    while (rs.next()) {
                                            %>
                                            <tr>
                                                <td><%= rs.getString("Nombre")%></td>
                                                <td><%= rs.getString("Autor")%></td>
                                                <td>
                                                    <form action="myspace.jsp" method="post">
                                                        <input type="hidden" name="nombre" value=" <%=rs.getString(1)%>">
                                                        <input type="hidden" name="autor" value=" <%=rs.getString(3)%>">
                                                        <input type="submit" value="A leer">
                                                    </form>
                                                </td>
                                            </tr>
                                            <%
                                                    }
                                                } catch (Exception e) {
                                                }


                                            %>

                                        </table>
                                    </div>
                                    <div class="column">                                    
                                        <span id="aventuraText">Terror</span>
                                            <table>
                                                <tr>
                                                    <th>Nombre</th>
                                                    <th>Autor</th>
                                                    <th>Acción</th>
                                                </tr>
                                                <%  try {
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        c = DriverManager.getConnection("jdbc:mysql://localhost/libros", "root", "");//bd_proyecto
                                                        s = c.createStatement();
                                                        rs = s.executeQuery("SELECT * FROM libro WHERE Genero='Terror'");

                                                        while (rs.next()) {
                                                %>
                                                <tr>
                                                    <td><%= rs.getString("Nombre")%></td>
                                                    <td><%= rs.getString("Autor")%></td>
                                                    <td>
                                                        <form action="myspace.jsp" method="post">
                                                            <input type="hidden" name="nombre" value=" <%=rs.getString(1)%>">
                                                            <input type="hidden" name="autor" value=" <%=rs.getString(3)%>">
                                                            <input type="submit" value="A leer">
                                                        </form>
                                                    </td>
                                                </tr>
                                                <%
                                                        }
                                                    } catch (Exception e) {
                                                    }


                                                %>

                                            </table>
                                        </div>
                                    </div>
                                </div>

                            </div> 
                            <footer class="footer-discover">
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
