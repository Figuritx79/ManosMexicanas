const registerForm = document.getElementById("registerForm");

registerForm.addEventListener("submit",(event) => {
    let nombre = document.getElementById("nombre").value.trim();
    let apellido = document.getElementById("apellidos").value.trim();
    let correo = document.getElementById("correo").value.trim();
    let telefono = document.getElementById("tel").value.trim();
    let password = document.getElementById("password").value.trim();

    if (nombre.length === 0 || apellido.length === 0 || correo.length === 0 || telefono.length === 0 || password === 0)   {
        Toastify({
            text:"Ingresa los datos solicitado",
            duration: 3000,
            close:true,
            gravity: "bottom",
            position:"right",
            stopOnFocus: true,
            style:{
                background: "#F04C4C"
            }

        }).showToast();
        event.preventDefault();
        return;
    }

});