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

    select.innerHTML = '<option selected disabled value="">Selecciona</option>';

    for (let valor in res){
        let option = document.createElement('option');

        option.setAttribute("value", res[valor].id_color);
        option.textContent = res[valor].nombre;
        select.appendChild(option);

    }

    const selectCate = document.getElementById("categoria");
    const peticionCate = await fetch('getCategoria',{
        method: 'GET',
        headers:{
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        }
    });

    if (!peticionCate.ok){
        throw new Error("Error");
    }
    let resCate = await peticionCate.json();

    selectCate.innerHTML = '<option selected disabled value="">Selecciona</option>';

    for (let valor in resCate){
        let option2 = document.createElement("option");
        option2.setAttribute("value",resCate[valor].id_categoria);
        option2.textContent = resCate[valor].nombre;
        selectCate.appendChild(option2);
    }
});