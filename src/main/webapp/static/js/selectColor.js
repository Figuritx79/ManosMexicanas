document.addEventListener("DOMContentLoaded",async () =>{
    const  select = document.getElementById("color");
    const peticion = await  fetch("getColor",{
        method:'GET',
        headers:{
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    })
    if (!peticion.ok){
        throw new Error('Error');
    }
    let res = await peticion.json();



    for (let valor in res){
        let option = document.createElement('option');

        option.setAttribute("value", res[valor].id_color);
        option.textContent = res[valor].nombre;
        select.appendChild(option);

    }

});