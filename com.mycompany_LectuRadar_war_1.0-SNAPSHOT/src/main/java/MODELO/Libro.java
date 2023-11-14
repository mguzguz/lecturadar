/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MODELO;

/**
 *
 * @author camig
 */
public class Libro {

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    private String nombre;
    private String autor;
    private String genero;

    public Libro(String nombre, String autor, String genero) {
        this.nombre = nombre;
        this.autor = autor;
        this.genero = genero;
    }

    @Override
    public String toString() {
        return "Libro: " + nombre + ", Autor: " + autor + ", Género: " + genero;
    }
}

