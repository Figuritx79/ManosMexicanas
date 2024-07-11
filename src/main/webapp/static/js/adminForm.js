document.addEventListener("DOMContentLoaded", function() {
    const emailInput = document.getElementById("email");
    const checkIcon = document.getElementById("check-icon");

    function checkEmail() {
        const email = emailInput.value;
        const validEmail = /\S+@\S+\.\S+/;

        if (validEmail.test(email)) {
            checkIcon.style.display = "inline-block";
        } else {
            checkIcon.style.display = "none";
        }
    }

    emailInput.addEventListener("input", checkEmail);
});
