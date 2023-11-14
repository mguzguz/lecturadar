/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MODELO;

import java.util.LinkedList;
import java.util.Queue;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author WORKING
 */
public class ColaDeSolicitudes {

    private static Queue<String> cola = new LinkedList<>();
    private static Map<String, String> librosRecomendados = new HashMap<>();
    private static Queue<String> recomendaciones = new LinkedList<>();

    public void agregarSolicitud(String solicitud) {
        cola.offer(solicitud);
    }

    public Queue<String> procesarSolicitud() {
        String mensaje = "";
        String solicitud = cola.poll();

        if (solicitud != null) {
             
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/libros", "root", "");
                mensaje = procesarSolicitudDesdeBaseDeDatos(conexion, solicitud);
                recomendaciones.offer(mensaje);
            } catch (SQLException ex) {
                mensaje = "Error al procesar la solicitud.";
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(ColaDeSolicitudes.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else {
            mensaje = "La cola de solicitudes está vacía.";
        }

        return recomendaciones;
    }

    private String procesarSolicitudDesdeBaseDeDatos(Connection conexion, String solicitud) throws SQLException {
        String mensaje = "";
        String libroRecomendado = obtenerLibroRecomendado(conexion, solicitud);

        if (libroRecomendado != null) {
            mensaje = "Género: " + solicitud+ " Libro: " + libroRecomendado + "<br>";
        } else {
            mensaje = "No se encontraron libros para la solicitud: " + solicitud;
        }

        return mensaje;
    }
    
    private String obtenerLibroRecomendado(Connection conexion, String genero) {
        if (librosRecomendados.containsKey(genero)) {
            return librosRecomendados.get(genero);
        }

        String libroAleatorio = obtenerLibroAleatorioDesdeBaseDeDatos(conexion, genero);
        librosRecomendados.put(genero, libroAleatorio);
        return libroAleatorio;
    }

// ...
    private String obtenerLibroAleatorioDesdeBaseDeDatos(Connection conexion, String genero) {
        String libroAleatorio = null;
        try (PreparedStatement ps = conexion.prepareStatement("SELECT * FROM libro WHERE Genero LIKE ?")) {
            ps.setString(1, "%" + genero + "%");

            try (ResultSet rs = ps.executeQuery()) {
                List<String> librosDisponibles = new ArrayList<>();

                while (rs.next()) {
                    String nombreLibro = rs.getString("Nombre");
                    String autorLibro = rs.getString("Autor");
                    librosDisponibles.add(nombreLibro + "<br> Del autor/a: " + autorLibro);
                }

                int cantidadTotalLibros = librosDisponibles.size();
                if (cantidadTotalLibros > 0) {
                    int indiceAleatorio = new Random().nextInt(cantidadTotalLibros);
                    libroAleatorio = librosDisponibles.get(indiceAleatorio);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return libroAleatorio;
    }

    public int tamano() {
        return cola.size();
    }

    public boolean estaVacia() {
        return cola.isEmpty();
    }
    
}
