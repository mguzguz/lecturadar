/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MODELO;

/**
 *
 * @author WORKING
 */
import java.sql.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelToSQLiteExample {

    public static void main(String[] args) throws FileNotFoundException, IOException, ClassNotFoundException {

        XSSFWorkbook wb = new XSSFWorkbook("D:\\Desktop\\LIBROS\\LIBROS.xlsx");
        XSSFSheet sheet = wb.getSheetAt(0);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost/libros", "root", "");
            PreparedStatement ps = c.prepareStatement("insert into libro (Nombre, Genero, Autor) values (?,?,?)");

            for (Row row : sheet) {
                // Iterar sobre las celdas de la fila
                Cell nombreCell = row.getCell(0);
                Cell generoCell = row.getCell(2);
                Cell autorCell = row.getCell(1);

                ps.setString(1, getCellValue(nombreCell));
                ps.setString(2, getCellValue(generoCell));
                ps.setString(3, getCellValue(autorCell));

                ps.executeUpdate();

            }

        } catch (SQLException ex) {
            Logger.getLogger(ExcelToSQLiteExample.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private static String getCellValue(Cell cell) {
        if (cell == null) {
            return null;
        }
        switch (cell.getCellType()) {
            case STRING:
                return cell.getStringCellValue();
            case NUMERIC:
                return String.valueOf(cell.getNumericCellValue());
            case BOOLEAN:
                return String.valueOf(cell.getBooleanCellValue());
            case FORMULA:
                return cell.getCellFormula();
            default:
                return "------------------------------------";
        }
    }

}
