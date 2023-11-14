package MODELO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BaseDeDatos{

    public static void main(String[] args) {
        List<Libro> listaLibros = obtenerLibrosDesdeBaseDeDatos();
        
        System.out.println("Datos en ArrayList:");
        for (Libro libro : listaLibros) {
            System.out.println(libro);
        }
    }

    public static List<Libro> obtenerLibrosDesdeBaseDeDatos() {
        List<Libro> libros = new ArrayList<>();
        // URL de conexión a la base de datos SQLite
        String url = "jdbc:sqlite:mi_basededatos.db";

        try (Connection connection = DriverManager.getConnection(url)) {
            if (connection != null) {
                System.out.println("Conexión exitosa a la base de datos SQLite.");

                // Consulta para seleccionar todos los registros de la tabla "libros"
                String query = "SELECT * FROM libros";

                try (Statement statement = connection.createStatement();
                     ResultSet resultSet = statement.executeQuery(query)) {
                    // Iterar a través de los registros y agregarlos a la lista de libros
                    while (resultSet.next()) {
                        String nombreLibro = resultSet.getString("Nombre");
                        String autorLibro = resultSet.getString("Autor");
                        String generoLibro = resultSet.getString("Genero");
                        libros.add(new Libro(nombreLibro, autorLibro, generoLibro));
                    }
                }
            } else {
                System.out.println("No se pudo conectar a la base de datos SQLite.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return libros;
    }
}
