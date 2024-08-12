const menuInput = document.getElementById('menu');
const body = document.body;

menuInput.addEventListener('change', () => {
    if (menuInput.checked) {
        body.style.overflow = 'hidden';
    } else {
        body.style.overflow = 'auto';
    }
});

// SEARCH DESPLEGABLE
const search = document.getElementById("searchDesplegable");
const searchContainer = document.getElementById("buscar");

searchContainer.addEventListener("click", () => {
    search.classList.remove("hidden");
    search.classList.remove("divUp");
    search.setAttribute("class", "nav__desplegable__out");

});

search.addEventListener("mouseenter", () => {
    search.classList.remove("hidden");
});

searchContainer.addEventListener("mouseleave", () => {
    setTimeout(() => {
        if (!search.matches(':hover')) {
            search.classList.add("hidden");
        }
    }, 1000);
});

search.addEventListener("mouseleave", () => {
    search.classList.add("divUp")
    search.classList.add("hidden");
});

// BOLSA DESPLEGABLE

const bag = document.getElementById("bolsaDesplegable");
const bagContainer = document.getElementById("bolsa");

bagContainer.addEventListener("click", () => {
   bag.classList.remove("hidden");
   bag.setAttribute("class", "nav__desplegable_bag")
});

bag.addEventListener("mouseenter", () => {
    search.classList.remove("hidden");
});
bagContainer.addEventListener("mouseleave",()=> {
    setTimeout(() => {
        if (!bag.matches(':hover')) {
            bag.classList.add("hidden");
        }
    }, 1000);
});
bag.addEventListener("mouseleave", () => {
    bag.classList.add("hidden")
})