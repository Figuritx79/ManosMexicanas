

document.addEventListener("DOMContentLoaded",   ev => {

    const btn = document.getElementById("submit");
    btn.addEventListener("click", async e => {
        try {
            const response = await fetch("http://localhost:8080/ManosMexicanas_war_exploded/test", {
                method: 'GET',
                headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                },
            });

            if (!response.ok) {
                throw new Error(`HTTP error Status: ${response.status}`);
            }

            const json = await response.json();

            const p = document.getElementById("json");
            p.textContent =JSON.stringify(json);

        } catch (error) {
            console.error(error);
        }
    });

})
