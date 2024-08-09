const form = document.getElementById("form-recu");

form.addEventListener('submit',ev =>{
    const email = document.getElementById('email').value;
    const validEmail = /\S+@\S+\.\S+/;
    if (email.length  === 0 && !validEmail.test(email)) {
        Toastify({
            text:"Ingresa los datos solicitados o estas ingresando algo que no es un correo.",
            duration: 3000,
            close:true,
            gravity: "bottom",
            position:"right",
            stopOnFocus: true,
            style:{
                background: "#F04C4C"
            }

        }).showToast();
        ev.preventDefault();
        return;
    }
    if (password.length < 0){
        Toastify({
            text:"Ingresa los datos solicitados.",
            duration: 3000,
            close:true,
            gravity: "bottom",
            position:"right",
            stopOnFocus: true,
            style:{
                background: "#F04C4C"
            }

        }).showToast();
        ev.preventDefault();
        return;
    }

});