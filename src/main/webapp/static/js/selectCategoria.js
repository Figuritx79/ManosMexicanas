    document.addEventListener("DOMContentLoaded",async () =>{
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


        for (let valor in resCate){
            let option2 = document.createElement("option");
            option2.setAttribute("value",resCate[valor].id_categoria);
            option2.textContent = resCate[valor].nombre;
            selectCate.appendChild(option2);
        }


    });