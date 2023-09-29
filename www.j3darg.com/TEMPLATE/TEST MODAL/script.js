// Obtén una referencia al botón de mostrar modal y al modal
var mostrarModalBtn = document.getElementById('mostrarModalBtn');
var miModal = document.getElementById('miModal');

// Agrega un evento de clic al botón para abrir el modal
mostrarModalBtn.addEventListener('click', function() {
    miModal.style.display = 'block';
});

// Obtén una referencia al botón de cierre del modal
var cerrarModal = document.getElementById('cerrarModal');

// Agrega un evento de clic al botón de cierre para cerrar el modal
cerrarModal.addEventListener('click', function() {
    miModal.style.display = 'none';
});
