

document.addEventListener("DOMContentLoaded", async () => {
    let arrayImages = [];
    let arrayColor = [];

    const divImages = document.querySelector("#divImg") ;
    const address = window.location.search
    const url = new URLSearchParams(address);
    const id = parseInt(url.get("id"));

   let idRandomImage = 0;

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
        arrayColor.push(responseJson[key].idColor);
    }

    arrayImages.forEach(url => {
        let img = document.createElement("img");
        img.classList.add("w-20", "rounded-md","hover:cursor-pointer","change");
        img.setAttribute("id","img"+idRandomImage);
        img.src = url;
        img.alt = arrayColor[idRandomImage];
        divImages.appendChild(img);
        idRandomImage = idRandomImage + 1;
    });

    changeImg();

});

function changeImg(){
    const imgChange = document.querySelector("#imgChange");
    const img0 = document.querySelector("#img0");
    const img1 = document.querySelector("#img1");
    const img2 = document.querySelector("#img2");
    const img3 = document.querySelector("#img3");

    img0.addEventListener("click",() => {
        imgChange.src = img0.src;
        imgChange.alt = img0.alt
    });

    img1.addEventListener("click",() => {
        imgChange.src = img1.src;
        imgChange.alt = img1.alt
    });

    img2.addEventListener("click",() => {
        imgChange.src = img2.src;
        imgChange.alt = img2.alt;
    });

    img3.addEventListener("click",() => {
        imgChange.src = img3.src;
        imgChange.alt = img3.alt;

    });
}
