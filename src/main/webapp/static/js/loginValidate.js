const form = document.getElementById("login-form");

form.addEventListener("submit", async  ev => {

    const email = document.getElementById("mail").value.trim();
    const password = document.getElementById("password").value.trim();

    if(email.length === 0 || password.length === 0){

       Toastify({
           text:"Ingresa los datos solicitado.",
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
   try {
       const response = await fetch("/login",{
           method: 'POST',
           headers:{
               "Content-Type": "application/json",
           },
           body: JSON.stringify({ username: `${email}`, password: `${password}` }),
       });
       const json = await response.json();
       console.log(json);
       if(response.status === 401){
           Toastify({
               text:"No estas autorizado para realizar esta accion.",
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
   }catch (error){
       Toastify({
           text:"Lo sientimos hubo un error, intentelo en un rato.",
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
});