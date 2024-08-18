const carrito= document.querySelector("#carrito");
carrito.addEventListener("click",async () =>{
    const img = document.querySelector("#imgChange");
    let idColor = img.alt;
    let url =  window.location.search;
    let params  = new URLSearchParams(url);

    let id = parseInt(params.get("id"));

    const peticion = await fetch("addCarrito",{
        method:'POST',
        headers:{
            "Content-Type": "application/json"
        },
        body: JSON.stringify({
            idProduct:id,
            color:idColor
        })
    });
    if(!peticion.ok){
        Toastify({
            text:"Por favor, inicia sesion",
            duration: 3000,
            close:true,
            gravity: "bottom",
            position:"right",
            stopOnFocus: true,
            style:{
                background: "#F04C4C"
            }

        }).showToast();
    }
    let jsonResponse = await peticion.json();
    let mensaje = jsonResponse.mensaje;

    Toastify({
        text: mensaje,
        duration: 3000,
        close:true,
        gravity: "bottom",
        position:"right",
        stopOnFocus: true,
        style:{
            background: "#30a380"
        }

    }).showToast();



});