const menuInput = document.getElementById('menu');
const body = document.body;

menuInput.addEventListener('change', () => {
    if (menuInput.checked) {
        body.style.overflow = 'hidden'; // Prevenir scroll del cuerpo
    } else {
        body.style.overflow = 'auto'; // Permitir scroll del cuerpo
    }
});