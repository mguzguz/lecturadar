import static MODELO.BaseDeDatos.obtenerLibrosDesdeBaseDeDatos;
import MODELO.Libro;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.annotation.WebServlet;

@WebServlet("/LibrosServlet")
public class LibrosServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    // Obtener la lista de libros desde la base de datos o desde donde corresponda
    List<Libro> libros = obtenerLibrosDesdeBaseDeDatos(); // Asegúrate de implementar este método

    // Establecer la lista de libros como un atributo en la solicitud
    request.setAttribute("libros", libros);

    // Redirigir a la página JSP
    request.getRequestDispatcher("index.jsp").forward(request, response);
}

}

