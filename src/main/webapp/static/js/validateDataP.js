const form = document.getElementById("form-recu");

form.addEventListener('submit',ev =>{
    const password = document.getElementById('password').value;
    if (password.length === 0){
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
