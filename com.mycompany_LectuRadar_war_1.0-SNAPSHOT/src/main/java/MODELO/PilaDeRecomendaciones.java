/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MODELO;

import java.util.ArrayList;
import java.util.Stack;

/**
 *
 * @author WORKING
 */
public class PilaDeRecomendaciones {

    private static ArrayList<String> ArrayDeLibros = new ArrayList<String>();
    private static Stack<String> historial = new Stack<String>();
    
    public PilaDeRecomendaciones() {

    }
 public Stack<String> historial(String msj) {
    for (int i = 0; i < ArrayDeLibros.size(); i++) {
        String libroActual = ArrayDeLibros.get(i);
        if (libroActual.equalsIgnoreCase(msj)) {
            ArrayDeLibros.remove(i);
            historial.push(msj);
        }
    }
    return historial;
}

    public Stack<String> mostrarPilaa() {
        return historial; 
    }
    // Método para agregar un libro a la pila
    public ArrayList<String> agregarLibro(String libro) {
        ArrayDeLibros.add(libro);
        return ArrayDeLibros;

    }
    
    public ArrayList<String> mostrarPila (){
        return ArrayDeLibros;
    }
    // Método para obtener el tamaño de la pila
    public int tamaño() {
        return ArrayDeLibros.size();
    }

    // Método para comprobar si la pila está vacía
    public boolean estaVacia() {
        return ArrayDeLibros.isEmpty();
    }
}
