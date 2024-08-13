const image = document.getElementById("imgChange");
let arrayImages = [];
document.addEventListener("DOMContentLoaded", async () => {
    const address = window.location.search
    const url = new URLSearchParams(address);
    const id = parseInt(url.get("id"));


    const peticion = await fetch(`getImages?id=${id}`, {
       method:'GET',
        headers: {"Content-Type": "application/json",},
    });
    if (!peticion.ok){
        throw new Error("Error AL HACER LA PETION");
    }
    let responseJson = await peticion.json();
    for(let key in responseJson){
        arrayImages.push(responseJson[key].url);
    }
    console.table(arrayImages)
});