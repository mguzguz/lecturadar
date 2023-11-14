/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
let isFooterVisible = true;

document.querySelector('.footer').addEventListener('click', () => {
    const footer = document.querySelector('.footer');
    if (isFooterVisible) {
        footer.style.transform = 'translateY(100%)';
    } else {
        footer.style.transform = 'translateY(0)';
    }
    isFooterVisible = !isFooterVisible;
});

    // Definir una pila para almacenar los libros
    var pilaLibros = [];

    function agregarALaPila(nombreLibro) {
        // Agregar el nombre del libro a la pila
        pilaLibros.push(nombreLibro);
        // Mostrar un mensaje para confirmar que el libro se agregó
        alert("Libro '" + nombreLibro + "' agregado a libros por leer.");
    }




