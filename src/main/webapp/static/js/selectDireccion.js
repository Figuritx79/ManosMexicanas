document.addEventListener("DOMContentLoaded",async () =>{
    let url = window.location.search;
    let params = new URLSearchParams(url);

    let id = parseInt(params.get("id"));
    const  select = document.getElementById("direccion");
    const peticion = await  fetch("direccion?id="+id,{
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

        option.setAttribute("value", res[valor].id);
        option.textContent = res[valor].ciudad;
        select.appendChild(option);

    }

});