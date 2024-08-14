

document.addEventListener("DOMContentLoaded", async () => {
    const image = document.getElementById("imgChange");
    let arrayImages = [];
    let arrayColor = [];
    const image1 = document.getElementById("color1");
    const image2 = document.getElementById("color2");
    const image3 = document.getElementById("color3");
    const image4 = document.getElementById("color4");
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
        arrayColor.push(responseJson[key].nombreColor);
    }

    arrayImages.forEach(key => {
        image4.src = key;
        console.log(key);
    })

    if (arrayImages.length > 0) image1.src = arrayImages[0];
    if (arrayImages.length > 1) image2.src = arrayImages[1];
    if (arrayImages.length > 2) image3.src =arrayImages[2];
    if (arrayImages.length > 3) image4.src = arrayImages[3];
  });

